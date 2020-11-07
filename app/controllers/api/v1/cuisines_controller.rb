class Api::V1::CuisinesController < ApplicationController
    before_action :authorized
    def index
        cuisines =  Cuisine.all
        render json: restaurants
    end

    def show
        cuisine = Cuisine.create(cuisine_params)
        render json: cuisine
    end

private

    def cuisine_params
        params.require(:cuisine).permit(:restaurant_id, :cuisine_id, :cuisine_name)
    end

end