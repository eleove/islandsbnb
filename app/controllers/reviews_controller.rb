class ReviewsController < ApplicationController
  # def new
  #   @island = Island.find(params[:island_id])
  #   @review = Review.new
  #  end

  def create
    @review = Review.new(review_params)
    @island = Island.find(params[:island_id])
    @review.island = @island
    if @review.save
      redirect_to island_path(@island)
    else
      render 'islands/show', island: @island
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @island = Island.find(params[:island_id])
    @review.destroy
    redirect_to island_path(@island)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
