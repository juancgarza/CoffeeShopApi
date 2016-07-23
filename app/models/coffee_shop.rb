class CoffeeShop < ActiveRecord::Base

  has_many :schedules

  validates :name, :latitude, :longitude, :city ,:state , :Cp , :address ,  presence: true

  validates :rating_value , presence: true
                          , numericality: { greater_than_or_equal_to: 1 , less_than_or_equal_to: 5 }

end
