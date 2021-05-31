class Gnome < ApplicationRecord
  validates :name, presence: true
  validates :power, presence: true
  validates :price, presence: true
end
