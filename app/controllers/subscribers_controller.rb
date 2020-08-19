class SubscribersController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized

  def new
    @subscriber = Subscriber.new
    authorize @subscriber
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    authorize @subscriber
    @subscriber.save
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:email)
  end
end