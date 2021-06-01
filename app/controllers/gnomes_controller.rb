class GnomesController < ApplicationController
  before_action :find_gnome, only [:show]

  def index
    @gnomes = Gnome.all
  end

  def show
  end

  private

  def find_gnome
    @gnome = Gnome.find(params[:id])
  end
end
