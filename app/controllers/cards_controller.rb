class CardsController < ApplicationController
  before_action :set_user, only: %i[index new create update edit destroy show]

  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def card_params
    params.require(:card).permit(:type, :number, :expire_date, :ccv, :bank_name, :card_holder)
  end
end
