class BillsController < ApplicationController
  before_action :set_bill, only: [:show, :edit, :update]
  before_action :set_vendor, only: [:new, :create]
  skip_before_action :authenticate_user!, only: [:new, :create] # for vendor

  def new
    @bill = Bill.new
    @bill.date = Time.now
    authorize @bill
  end

 def create
    @bill = Bill.new(bill_params)
    @bill.vendor = @vendor
    @bill.user = User.find(params[:bill][:user_id])
    @bill.price = params[:bill][:price]
    @bill.status = "pending"
    authorize @bill


    if @bill.save
      redirect_to bill_path(@bill)
    else
      render :new
    end
  end

  def show
  authorize @bill
  end

  def edit

  end

  def update

  end

    private

  def set_bill
    @bill = Bill.find(params[:id])
  end

  def bill_params
    params.require(:bill).permit(:date, :status, :price)
  end

  def set_vendor
    @vendor = Vendor.find(params[:vendor_id])
  end

end
