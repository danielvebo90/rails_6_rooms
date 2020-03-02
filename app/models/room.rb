class Room < ApplicationRecord
  validates :title, :description, :beds, :guests, :image_url, presence: true
  validates :description, length: { maximum: 400 }
  validates :beds, numericality: { only_integer: true }
  # validates :price_per_night, numericality: { only_float: true }
  validates :guests, numericality: { only_integer: true }
end
