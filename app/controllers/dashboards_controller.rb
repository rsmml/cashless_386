class DashboardsController < ApplicationController
  before_action :set_user, only: %i[show]

  def show
    # @cards = Card.find_by(user: current_user.id)
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
