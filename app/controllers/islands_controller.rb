class IslandsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @islands = Island.all
    @markers = @islands.map do |island|
      {
        long: island.longitude,
        lat: island.latitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { island: island }),
        image_url: helpers.asset_url('icons8-beach.png')
      }
    end
  end

  def new
    @island = Island.new
  end

  def create
    @island = Island.new(island_params)
    @island.user = current_user
    if @island.save
      redirect_to islands_path, notice: 'Success'
    else
      render :new
    end
  end

  def show
    @island = Island.find(params[:id])
    @review = Review.new
    @booking = Booking.new
  end

  private

  def island_params
    params.require(:island).permit(:title, :description, :price_per_night, :photo, :address)
  end
end
