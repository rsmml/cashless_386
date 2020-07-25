class CardsController < ApplicationController
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

  def card_params
    params.require(:card).permit(:type, :number, :expire_date, :ccv, :bank_name, :card_holder)
  end
end
