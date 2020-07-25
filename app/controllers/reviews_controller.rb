class ReviewsController < ApplicationController
  before_action :set_vendor, only: %i[index new create]
  before_action :authenticate_user!

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    authorize @review
    @review.user = current_user
    @review.vendor = Vendor.find(params[:vendor_id])
    if @review.save
      redirect to root
    else
      render :new
    end
  end

  private

  def set_vendor
    @vendor = Vendor.find(params[:vendor_id])
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
