class CreateBookings < ActiveRecord::Migration[8.0]
  def change
    create_table :bookings do |t|
      t.string :message
      t.date :start_date
      t.date :end_date
      t.integer :total_price
      t.integer :booking_status
      t.references :plant, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
