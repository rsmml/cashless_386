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

    if @user.stripe_id.nil? || @user.stripe_id.empty?
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
        source: token,
      })

    rescue Stripe::StripeError => e
      @error = e
      puts e
      # erb :error
    end

    redirect_to new_vendor_review_path(@bill.vendor.id)
  end

  private

  def set_bill
    # @bill = current_user.bills.where(status: 'pending').find(params[:bill_id])
     @bill = Bill.find(params[:bill_id])
  end
end
