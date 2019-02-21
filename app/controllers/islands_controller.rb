class IslandsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @islands = Island.all
    @markers = @islands.map do |island|
      {
        lng: island.longitude,
        lat: island.latitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { island: island })
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
    @booking = Booking.new
  end

  private

  def island_params
    params.require(:island).permit(:title, :description, :price_per_night, :photo)
  end
end
