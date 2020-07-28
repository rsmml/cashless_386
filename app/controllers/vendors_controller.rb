class VendorsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_vendor, only: :show

  def index
    if params[:query].present?
      sql_query = " \
        vendors.name @@ :query \
        OR vendors.description @@ :query \
      "
      @vendors = policy_scope(Vendor.geocoded.where(sql_query, query: "%#{params[:query]}%"))
    else
      @vendors = policy_scope(Vendor.geocoded)
    end

    @markers = @vendors.map do |vendor|
      {
        lat: vendor.latitude,
        lng: vendor.longitude,
        infoWindow: render_to_string(partial: "vendor_popup", locals: { vendor: vendor })
      }
    end
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
    # @vendor.user = current_user
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
