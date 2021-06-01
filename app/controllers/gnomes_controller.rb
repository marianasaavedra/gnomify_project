class GnomesController < ApplicationController
  # before_action :find_gnome, only: %i[show]

  def show
    @gnome = Gnome.find(params[:id])
    @booking = Booking.new
  end

  def index
    @gnomes = Gnome.all
  end
end
