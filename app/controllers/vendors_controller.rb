class VendorsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_vendor, only: [:edit, :update, :show, :destroy]

  def index
    @vendors = policy_scope(Vendor).order(name: :asc)
  end

  def show

  end

  def new
    @vendor = Vendor.new
    authorize @vendor
  end

  def create

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_vendor
    @vendor = Vendor.find(params[:id])
  end

  def vendor_params
    params.require(:vendor).permit(:name, :address, :type, :phone, :city)
  end
end
