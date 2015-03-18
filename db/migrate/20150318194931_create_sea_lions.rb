class CreateSeaLions < ActiveRecord::Migration
  def change
    create_table :sea_lions do |t|
      t.string :name, null: false, limit: 20
      t.string :location, null: false
      t.string :favorite_food, null: false

      t.timestamps null: false
    end
  end
end
