class CreateCoffeeShops < ActiveRecord::Migration
  def change
    create_table :coffee_shops do |t|
      t.string :name
      t.string :schedule
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
