class PaymentsController < ApplicationController
  protect_from_forgery
  before_action :set_bill, only: [:new, :create]

  def new
    authorize @bill
  end

  def create

    authorize @bill
    Stripe.api_key = Rails.configuration.stripe[:secret_key]
    token = params[:stripeToken]

    @user = User.find(@bill.user.id)

    if @user.stripe_id.nil?
      @customer = Stripe::Customer.create({
        source: token,
        email: @bill.user.email,
        name: @bill.user.name,
        description: @bill.user,
      })

      @user.stripe_id = @customer.id
      @user.save
    end

    begin
    @charge = Stripe::Charge.create({
        amount: @bill.price_cents,
        currency: 'eur',
        description: @bill.vendor,
        customer: @user.stripe_id,
        metadata: { bill_id: @bill.id },
        source: token,
      })

    rescue Stripe::StripeError => e
      @error = e
      puts e
      # erb :error
    end

    @bill.charge = @charge.id
    @bill.status = @charge.status
    @bill.save

    redirect_to new_vendor_review_path(@bill.vendor.id, bill: { id: @bill.id, status: @charge.status})
  end

  private

  def set_bill
    # @bill = current_user.bills.where(status: 'pending').find(params[:bill_id])
     @bill = Bill.find(params[:bill_id])
  end
end
