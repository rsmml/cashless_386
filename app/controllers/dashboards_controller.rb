class DashboardsController < ApplicationController
  before_action :set_user, only: %i[show]

  def show
    @vendor = Vendor.all
    @users = User.all
    @historial = Historial.all
    map
  end

  def map
    if params[:query].present?
      sql_query = " \
        vendors.name @@ :query \
        OR vendors.description @@ :query \
      "
      @vendors = Vendor.geocoded.where(sql_query, query: "%#{params[:query]}%")
        alert_no_results
    else
      @vendors = Vendor.geocoded
    end

    @markers = @vendors.map do |vendor|
      {
        lat: vendor.latitude,
        lng: vendor.longitude,
        id: vendor.id,
        name: vendor.name,
        infoWindow: render_to_string(partial: "map_popup", locals: { vendor: vendor })
      }
    end
  end

  private

  def set_user
    @user = User.find(current_user.id)
    authorize @user
  end

  def alert_no_results
    if @vendors == []
      flash.alert = "Sorry, venue not found"
      # call the geolocate to zoom the map to your location
    end
  end

  def profile_user_params
    params.require(:user).permit(
      :name, :email,
      :last_name,
      :nick_name,
      :phone_number,
      :date_of_birth,
      :gender,
      :address,
      :photo
    )
  end
end
