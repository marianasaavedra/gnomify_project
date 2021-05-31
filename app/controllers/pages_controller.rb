class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def my_bookings
  end
  def home
  end
end
