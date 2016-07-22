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
  end

  def update
  end

  def destroy
  end

  private
  def coffeeshop_params
    params.require(:coffeeshop).permit(:name)
  end
end
