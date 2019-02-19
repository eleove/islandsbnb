class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @island = Island.find(params[:island_id])
    @booking.island = @island

    if @booking.save
      redirect_to island_path(@booking.island), notice: 'Success'
    else
      # redirect_to island_path(@booking.island), alert: 'Failure'
      render 'islands/show'
    end
  end

  private

  def booking_params
    params.require("booking").permit(:check_in, :check_out)
  end
end
