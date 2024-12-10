class Booking < ApplicationRecord
  belongs_to :plant
  belongs_to :user

  enum :booking_status, {
    pending: 0,
    accepted: 1,
    denied: 2
  }

  validates_presence_of :start_date, :end_date
  validates :message, presence: true
end
