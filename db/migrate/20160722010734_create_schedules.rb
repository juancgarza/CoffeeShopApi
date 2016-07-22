class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.boolean :monday, default: false
      t.boolean :tuesday, default: false
      t.boolean :wednesday, default: false
      t.boolean :thursday, default: false
      t.boolean :friday, default: false
      t.boolean :saturday, default: false
      t.boolean :sunday, default: false
      t.string :from_hour, default: '00:00'
      t.string :to_hour, default: '23:59'
      t.references :coffeeshop, index: true

      t.timestamps null: false
    end
    add_foreign_key :schedules, :coffeeshops
  end
end
