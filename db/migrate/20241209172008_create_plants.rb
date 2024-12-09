class CreatePlants < ActiveRecord::Migration[8.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :watering
      t.string :image
      t.string :sunlight
      t.boolean :indoor
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
