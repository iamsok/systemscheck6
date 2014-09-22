class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant_id = @restaurant.id
    if @review.save
      redirect_to restaurant_path(params[:restaurant_id])
    else
      @restaurant = Restaurant.find(params[:restaurant_id])
      render :new
    end
  end

  def review_params
    params.require(:review).permit(:rating, :body)
  end
end
