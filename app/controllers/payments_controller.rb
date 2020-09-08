class PaymentsController < ApplicationController
  protect_from_forgery
  before_action :set_bill, only: [:new, :create]
  before_action :set_user, only: [:new, :create]

  def new
    authorize @bill
    @user = current_user
  end

  def create
    authorize @bill

    # if user has never paid with our app, create a stripe customer account
    if @user.stripe_id.nil?
      @customer = create_customer
      @user.stripe_id = @customer.id
      @user.save
    end

    # create a charge (kind of payment request) to send stripe
    # begin
    # @charge = make_payment

    # rescue Stripe::StripeError => e
    #   @error = e
    #   puts e
    #   # erb :error
    # end
    create_paymentintent
    # @bill.charge = @charge.id
    # @bill.status = @charge.status
    # @bill.save

    redirect_to new_vendor_review_path(@bill.vendor.id, bill: { id: @bill.id, status: @charge.status})
  end

  private

  def set_bill
    # TODO: @bill = current_user.bills.where(status: 'pending').find(params[:bill_id])
    @bill = Bill.find(params[:bill_id])
  end

  def set_user
    @user = User.find(@bill.user.id)
  end

  def create_paymentintent
    Stripe.api_key

    # an endpoint to start the payment process
    post  bill_payments _path(@bill) do
      content_type 'application/json'
      data = JSON.parse(request.body.read)

      # create a paymentIntent with amount and currency
      payment_intent = Stripe::PaymentIntent.create(
        amount: calculate_order_amount(data['items']),
        currency: 'eur',
        payment_method_types: ['card'],
        description: @bill.vendor,
        metadata: { bill_id: @bill.id },
      )
      {
        clientSecret: payment_intent['client_sercret'],
      }.to_json
    end
  end

  def calculate_order_amount(_items)
    @bill.price_cents
  end

  # def create_customer
  #   Stripe.api_key
  #   token = params[:stripeToken]

  #   Stripe::Customer.create({
  #     source: token,
  #     email: @bill.user.email,
  #     name: @bill.user.name,
  #     description: @bill.user,
  #   })
  # end

  # def make_payment
  #   Stripe::Charge.create({
  #     amount: @bill.price_cents,
  #     currency: 'eur',
  #     description: @bill.vendor,
  #     metadata: { bill_id: @bill.id },
  #     customer: @user.stripe_id,
  #   })
  # end

end
