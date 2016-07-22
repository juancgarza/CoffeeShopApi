class Api::V1::CoffeeshopsController < ApplicationController
  def index
    render json: Coffeeshop.all, status: 200
  end

  def show
    coffeeshop = Coffeeshop.find(params[:id])
    if coffeeshop 
      render json: coffeeshop, status: 200
    else
      render json: { coffeeshop_id: params[:id], message: "Not found" }, status: 404
    end
  end

  def create
    coffee_shop = CoffeShop.new(coffee_shop_params)
    if coffee_shop.save
      render json: coffee_shop, status: 201
    else
      render json: { coffeeshop: { errors: coffee_shop.errors } }, status: 422
    end
  end

  def update
    coffee_shop = CoffeeShop.find(params[:id])
    render json: { coffeeshop_id: params[:id], message: "Not found" }, status: 404 unless coffee_shop
    if coffee_shop.update(coffee_shop_params)
      render json: coffee_shop, status: 201
    else
      render json: { coffeeshop: { errors: coffee_shop.errors } }, status: 422
    end
  end

  def destroy
    coffee_shop = CoffeeShop.find(params[:id]).destroy
    head 204
  end

  private
  def coffee_shop_params
    params.require(:coffeeshop)
      .permit(
        :name, 
        :latitude, 
        :longitude, 
        schedule_params: [
          :monday, 
          :tuesday, 
          :wednesday, 
          :thursday, 
          :friday, 
          :saturday, 
          :sunday
        ]
      )
  end
end
