class VendorsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_vendor, only: :show

  def index
    @vendors = policy_scope(Vendor).order(name: :asc)
  end

  def show
    authorize @vendor
  end

  def new
    @vendor = Vendor.new
    authorize @vendor
  end

  def create
    @vendor = Vendor.new(vendor_params)
    @vendor.user = current_user
    authorize @vendor
    if @vendor.save
      redirect_to vendor_path(@vendor)
    else
      render :new
    end
  end

  private

  def set_vendor
    @vendor = Vendor.find(params[:id])
  end

  def vendor_params
    params.require(:vendor).permit(:name, :address, :business, :phone, :city, :description, :weekday_opening_times, :saturday_opening_times, :sunday_opening_times)
  end
end
