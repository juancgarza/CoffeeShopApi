class CoffeeShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :location , :avg_rating

include ActiveRecord::Calculations

  def location
    { latitude: object.latitude, longitude: object.longitude }
  end

  def avg_rating
    self.rating_value.average
  end

end
