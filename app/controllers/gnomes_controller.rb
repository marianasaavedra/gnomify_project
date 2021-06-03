class GnomesController < ApplicationController
  # before_action :find_gnome, only: %i[show]

  def show
      @gnome = Gnome.find(params[:id])
      @booking = Booking.new
      @markers =  [{
          lat: @gnome.latitude,
          lng: @gnome.longitude,
          image_url: helpers.asset_url('gnomey.png'),
          info_window: render_to_string(partial: "info_window", locals: { gnome: @gnome })
        }]
  end

  def index
    if params[:query].present?
      @gnomes = Gnome.search_by_name_power_and_price(params[:query])
      unless @gnomes.present?
        @message = "Sorry, we couldn't find your gnome! Please try again :)"
      end
    else
      @gnomes = Gnome.all
    end

    @markers = @gnomes.geocoded.map do |gnome|
      {
        lat: gnome.latitude,
        lng: gnome.longitude,
        image_url: helpers.asset_url('gnomey.png'),
        info_window: render_to_string(partial: "info_window", locals: { gnome: gnome })
      }
    end
  end
end
