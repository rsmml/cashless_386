class DashboardsController < ApplicationController
  before_action :set_user, only: %i[show]

  def show
    @vendor = Vendor.all
  end

  private

  def set_user
    @user = User.find(current_user.id)
    authorize @user
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
