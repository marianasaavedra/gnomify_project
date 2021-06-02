class Gnome < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, presence: true
  validates :power, presence: true
  validates :price, presence: true

  has_many :bookings

  has_one_attached :photo
end
