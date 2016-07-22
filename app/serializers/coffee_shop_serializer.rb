class CoffeeShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :location

  def location
    { latitude: object.latitude, longitude: object.longitude }
  end
end
