class PaymentsController < ApplicationController
  protect_from_forgery
  before_action :set_bill, only: [:new, :create]

  def new
    authorize @bill
  end

  def create

    Stripe.api_key = Rails.configuration.stripe[:secret_key]
    token = params[:stripeToken]

    # TODO: create Customer account of Stripe
    # if @customer.id
    #   charge = Stripe::Charge.create({
    #     amount: @bill.price,
    #     currency: 'eur',
    #     customer: @customer.id,
    #   })
    # else
    #   customer = Stripe::Customer.create({
    #     source: token,
    #     email: @bill.user.email,
    #   })

    #   charge = Stripe::Charge.create({
    #   amount: @bill.price,
    #   currency: 'eur',
    #   customer: customer.id,
    # })
    # end
    authorize @bill

    begin
    @charge = Stripe::Charge.create({
        amount: @bill.price_cents,
        currency: 'eur',
        description: @bill.vendor,
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
