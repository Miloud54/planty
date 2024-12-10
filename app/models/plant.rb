class Plant < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings

  validates :name, presence: true
  validates :image, presence: true
  validates :price_per_day, presence: true

  WATERING = %w(frequent average minimum none)
  SUNLIGHT = %w(full_shade, part_shade, sun-part_shade, full_sun)
end
