class UpdateBookingStatusDefaultInBookings < ActiveRecord::Migration[8.0]
  def change
    change_column_default :bookings, :booking_status, 0
  end
end
