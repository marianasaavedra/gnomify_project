class BookingsController < ApplicationController
  def create
    @gnome = Gnome.find(params[:gnome_id])
    @booking = Booking.new(booking_params)
    @booking.gnome = @gnome
    @booking.user = current_user

    if @booking.save
      redirect_to my_bookings_path
    else
      render "gnomes/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
