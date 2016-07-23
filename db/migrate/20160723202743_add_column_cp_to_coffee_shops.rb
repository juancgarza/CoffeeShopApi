class AddColumnCpToCoffeeShops < ActiveRecord::Migration
  def change
    add_column :coffee_shops, :cp, :string

    CoffeeShop.all do |coffee|
      coffee.cp = coffee.CP.to_s
      coffee.save
    end
  end
end
