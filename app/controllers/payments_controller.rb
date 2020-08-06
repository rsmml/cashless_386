class PaymentsController < ApplicationController
  protect_from_forgery
  before_action :set_bill, only: [:new, :create]

  def new
    authorize @bill
  end

  def create

    Stripe.api_key = Rails.configuration.stripe[:secret_key]
    token = params[:stripeToken]
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
    charge = Stripe::Charge.create({
        amount: @bill.price_cents,
        currency: 'eur',
        description: @bill.user.email,
        source: token,
      })
      redirect_to new_vendor_review_path(@bill.vendor.id)

    rescue Stripe::StripeError => e
      @error = e
      # erb :error
    end
  end

  private

  def set_bill
    # @bill = current_user.bills.where(status: 'pending').find(params[:bill_id])
     @bill = Bill.find(params[:bill_id])
  end

end
