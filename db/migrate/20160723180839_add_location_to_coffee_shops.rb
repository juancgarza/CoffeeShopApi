class AddLocationToCoffeeShops < ActiveRecord::Migration
  def change
    add_column :coffee_shops, :city, :string
    add_column :coffee_shops, :state, :string
    add_column :coffee_shops, :CP , :integer
    add_column :coffee_shops, :address, :string
  end
end
