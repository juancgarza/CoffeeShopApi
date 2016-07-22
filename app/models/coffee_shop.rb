class CoffeeShop < ActiveRecord::Base
validates :name
          , :coffeeshop_id
          , :schedule
          , :latitude
          , :longitude
          , presence: true
end
