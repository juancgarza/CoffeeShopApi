class RemoveColumnCpFromCoffeeShops < ActiveRecord::Migration
  def change
    remove_column :coffee_shops, :CP, :integer
  end
end
