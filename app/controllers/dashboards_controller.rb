class DashboardsController < ApplicationController
  before_action :set_user, only: %i[show]
  skip_after_action :verify_authorized

  def show
    @vendor = Vendor.all
    @users = User.all
    # @historial = Historial.all
    @ad = select_ad
    @transactions = Bill.where(user_id: current_user.id)
  end

  def camera
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

  def select_ad
    [ "Pay with Cashless and get €10 off!",
      "Iterate through our new menu",
      "Don't forget your flashcards ♥️ and get free coffee!"
    ].sample
  end
end
