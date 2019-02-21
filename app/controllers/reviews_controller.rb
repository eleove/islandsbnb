class ReviewsController < ApplicationController
  def new
    @island = Island.find(params[:island_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.island = Island.find(params[:island_id])
    @review.save
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
