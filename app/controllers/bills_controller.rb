class BillsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create ]
  before_action :authenticate_user!, only: [ :edit, :update ]

  def new
    @bill = Bill.new
    authorize @bill
  end

  def create
    @bill = Bill.new(bill_params)
    @bill.vendor = Vendor.find_by(params[:vendor_id])
    @bill.user = User.find_by(params[:user_id])
    @bill.price_cents = params[:price_cents]
    @bill.save

  end

  def show

  end

  def edit

  end

  def update

  end

  private

  def bill_params
    params.require(:bill).permit(:date, :price_cents, :status, :vendor_id, :user_id, )
  end

end
