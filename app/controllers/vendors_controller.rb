class VendorsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_vendor, only: :show

  def index
    @vendors = policy_scope(Vendor).order(name: :asc)
  end

  def show
    authorize @vendor
  end

  private

  def set_vendor
    @vendor = Vendor.find(params[:id])
  end

#   def vendor_params
#     params.require(:vendor).permit(:name, :address, :type, :phone, :city)
#   end
end
