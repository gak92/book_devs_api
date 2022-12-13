class Api::V1::ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[show update destroy]

  # GET /api/v1/reservations
  def index
    # @reservations = Reservation.all
    @reservations = current_user.reservations.all

    render json: @reservations
  end

  # GET /api/v1/reservations/1
  def show
    render json: @reservation
  end

  # POST /api/v1/reservations
  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user

    if @reservation.save
      render json: @reservation, status: :created
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/reservations/1
  def update
    if @reservation.update(reservation_params)
      render json: @reservation
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/reservations/1
  def destroy
    render json: @reservation if @reservation.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def reservation_params
    params.require(:reservation).permit(:name, :reservation_date, :city, :user_id, :developer_id)
  end
end
