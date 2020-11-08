class Api::V1::RestaurantsController < ApplicationController
    before_action :authorized
    def index
        restaurants =  Restaurant.all
        render json: restaurants
    end

    def show
        restaurant = Restaurant.create(restaurant_params)
        render json: restaurant
    end

private

    def restaurant_params
        params.require(:restaurant).permit(:name, :address, :zomato_id, :zip, :photos_url, :cuisines)
    end

end