class Api::V1::RestaurantsController < ApplicationController
    #before_action :authorized
    def index
        restaurants =  Restaurant.all
        render json: restaurants
    end

    def show
        restaurant = Restaurant.find(restaurant_params)
        render json: restaurant
    end

    def create
        restaurant = Restaurant.find_or_create_by!(restaurant_params)
        render json: restaurant
    end

private

    def restaurant_params
        params.require(:restaurant).permit(:name, :address, :zomato_id)
    end

end