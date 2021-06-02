class GnomesController < ApplicationController
  # before_action :find_gnome, only: %i[show]

  def show
      @gnome = Gnome.find(params[:id])
      @booking = Booking.new
  #   @markers = @gnome.geocoded.map {
  #       lat: @gnome.latitude,
  #       lng: @gnome.longitude
  #     }
  end

  def index
    @gnomes = Gnome.all

    @markers = @gnomes.geocoded.map do |gnome|
      {
        lat: gnome.latitude,
        lng: gnome.longitude
      }
    end
  end
end
