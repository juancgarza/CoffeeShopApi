class CoffeeShop < ActiveRecord::Base

  has_many :schedules

  validates :name
          , :latitude
          , :longitude
          , presence: true
end
