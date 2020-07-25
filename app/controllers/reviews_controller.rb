class ReviewsController < ApplicationController
  before_action :set_vendor, only: %i[index new create]

  def index

  end

  def new

  end

  def create

  end

  private

  def set_vendor
    @vendor = Vendor.find(params[:vendor_id])
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
