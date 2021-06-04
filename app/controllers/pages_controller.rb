class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def my_bookings
    set_counter
    @bookings = Booking.where(user: current_user)
    respond_to do |format|
      format.html
      format.json { render json: { bookings: @restaurants } }
    end
  end

  def home
    @gnomes = Gnome.all.sample(3)
  end

  def set_counter
    @booking_count = Booking.count
  end
end
