Stripe.api_key = ENV['STRIPE_PUBLISHABLE_KEY']
# Stripe.api_key = Rails.configuration.stripe[:publishable_key]

set :static, true
set :public_folder, File.join(File.dirname(__FILE__), '.')
set :port, 3000

# Securely calculate the order amount
def calculate_order_amount(_items)
  # Replace this constant with a calculation of the order's amount
  _items.price
end

# def charge_customer(customerId)
#   # Lookup all payment methods for customer
#   payment_methods = Stripe::PaymentMethod.list(
#     customer: customerId,
#     type: 'card'
#   )

#   # Charge the customer and payment method immediately
#   payment_intent = Stripe::PaymentIntent.create(
#     amount: calculate_order_amount(data['items']),
#     currency: 'eur',
#     customer: customerId,
#     payment_method: payment_methods.data[0]['id'],
#     off_session: true,
#     confirm: true
#   )

#   if payment_intent['status'] == 'succeeded'
#     puts '✅ Successfully charged card off session'
#   end
# end

# An endpoint to start the payment process
post '/create-payment-intent' do
  content_type 'application/json'
  data = JSON.parse(request.body.read)
  # Alternatively, set up a webhook to listen for the payment_intent.succeeded event
  # and attach the PaymentMethod to a new Customer
  customer = Stripe::Customer.create

  # Create a PaymentIntent with amount and currency
  payment_intent = Stripe::PaymentIntent.create(
    amount: calculate_order_amount(data['items']),
    currency: 'eur'
  )

  {
    clientSecret: payment_intent['client_secret'],
  }.to_json
end
