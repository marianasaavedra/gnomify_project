class Gnome < ApplicationRecord
  validates :name, presence: true
  validates :power, presence: true
  validates :price, presence: true

  has_many :bookings

  has_one_attached :photo
end
