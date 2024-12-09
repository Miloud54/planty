class UpdateIndoorDefaultInPlants < ActiveRecord::Migration[8.0]
  def change
    change_column_default :plants, :indoor, nil
  end
end
