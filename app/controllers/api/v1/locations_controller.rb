class Api::V1::LocationsController < ApplicationController
    before_action :authorized
    def index
        locations =  Location.all
        render json: locations
    end

    def show
        location = Location.create(location_params)
        render json: location
    end

private

    def location_params
        params.require(:location).permit(:address, :locality, :city, :zipcode, :restaurant_id)
    end

end