class RemoveIndoorFromPlants < ActiveRecord::Migration[8.0]
  def change
    remove_column :plants, :indoor, :boolean
  end
end
