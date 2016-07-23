class AddRatingToCoffeeShops < ActiveRecord::Migration
  def change
    add_column :coffee_shops, :rating_value, :integer
  end
end
