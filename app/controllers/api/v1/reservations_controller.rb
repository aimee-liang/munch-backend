class Api::V1::ReservationsController < ApplicationController
    before_action :authorized

    def index
        reservations = Reservation.all
        render json: reservations
    end
    
    def show
        reservation = Reservation.find(reservation_params)
        render json: reservation
    end

    def create
        reservation = Reservation.create!(reservation_params)
        render json: reservation
    end

    def update
        reservation = Reservation.find(params[:id])
        reservation.update(reservation_params)
        render json: reservation
    end


    def destroy
        reservation = Reservation.find(params[:id]).destroy
        render json: reservation
    end

private
    def reservation_params
        params.require(:reservation).permit(:user_id, :restaurant_id, :datetime, :guests)
    end

end