class RemoveScheduleFromCoffeShops < ActiveRecord::Migration
  def change
    remove_column :coffee_shops, :schedule
  end
end
