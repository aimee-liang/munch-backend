class ReservationsControler < ApplicationController
    before_action :authorized

    def index
        reservations = Reservation.all
        render json: reservations
    end
    
    def show
        reservation = Reservation.create(reservations_params)
        render json: reservation
    end

    def new
        reservation = Reservation.new
    end

    def create
        @reservation = Reservation.create(reservations_params)
    end

    def update
    end

    def edit
    end

    def delete
    end

private
    def reservations_params
        params.require(:resrvation).permit(:user_id, :restaurant_id)
    end

end