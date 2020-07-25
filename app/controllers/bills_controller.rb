class BillsController < ApplicationController
  before_action :authenticate_user!, only: [ :new, :create ]

  def new
    @bill = Bill.new
    authorize @bill
  end

  def create
    raise
  end

  def show

  end

  def edit

  end

  def update

  end

end
