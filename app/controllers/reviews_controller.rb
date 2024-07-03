class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.build(review_params)
    # mes restaurants et mes reviews seront créés avec mes params
        if @review.save
          redirect_to @restaurant
        else
          render :new, status: :unprocessable_entity
        end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
