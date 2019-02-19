class IslandsController < ApplicationController
  def index
  end

  def new
    @island = Island.new
  end

  def create
    @island = Island.new(island_params)
    if @island.save
      redirect_to islands_index_path, notice: 'Success'
    else
      render :new
    end
    @island.user = current_user
    @island.save
  end

  private

  def island_params
    params.require(:island).permit(:title, :description, :price_per_night)
  end
end
