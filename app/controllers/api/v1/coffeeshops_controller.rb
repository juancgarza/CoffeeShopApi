class Api::V1::CoffeeshopsController < Api::V1::BaseController
  def index
    if params[:q]

    else
      render json: CoffeeShop.all, status: 200
    end
  end

  def show
    coffeeshop = CoffeeShop.find(params[:id])
    if coffeeshop 
      render json: coffeeshop, status: 200
    else
      render json: { coffeeshop_id: params[:id], message: "Not found" }, status: 404
    end
  end

  def create
    coffee_shop = CoffeeShop.new(coffee_shop_params)
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
    coffee_shop = CoffeeShop.find(params[:id])
    coffee_shop.destroy
    head 204
  end

  private
  def coffee_shop_params
    params.require(:coffee_shop)
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

  def search_params
    params.permit(:name, :city, :cp)
  end
end
