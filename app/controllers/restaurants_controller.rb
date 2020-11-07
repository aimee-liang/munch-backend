class RestaurantsController < ApplicationController
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
        params.require(:restaurant).permit(:name)
    end

end