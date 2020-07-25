class CardsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_card, only: %i[edit update show destroy]

  def index
    @cards = policy_scope(Card)
  end

  def new
    @card = Card.new
    authorize @card
  end

  def create
    @card = Card.new(card_params)
    @card.user = current_user
    authorize @card
    if @card.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @card.update(card_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @card.destroy
    redirect_to root_path
  end

  def show
  end

  private

  def find_card
    @card = Card.find(params[:id])
    authorize @card
  end

  def card_params
    params.require(:card).permit(:type, :number, :expire_date, :ccv, :bank_name, :card_holder)
  end
end
