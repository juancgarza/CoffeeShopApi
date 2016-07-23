class CoffeeShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :location , :avg_rating

include ActiveRecord::Calculations

  def location
    { 
      address: object.address,
      city: object.city,
      state: object.state,
      cp: object.cp,
      latitude: object.latitude, 
      longitude: object.longitude,
    }
  end

  def avg_rating
    "#{object.rating_value}/5"
  end

end
