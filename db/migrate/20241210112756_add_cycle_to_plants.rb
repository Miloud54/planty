class AddCycleToPlants < ActiveRecord::Migration[8.0]
  def change
    add_column :plants, :cycle, :string
  end
end
