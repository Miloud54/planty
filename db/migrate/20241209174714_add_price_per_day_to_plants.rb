class AddPricePerDayToPlants < ActiveRecord::Migration[8.0]
  def change
    add_column :plants, :price_per_day, :integer
  end
end
