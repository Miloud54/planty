class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)

    @plant = Plant.find(params[:plant_id])
    @user = current_user
    @booking.plant = @plant
    @booking.user = @user

    if @booking.save
      redirect_to partner_booking_path(@partner, @booking)
    else
      render 'plants/show', status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @dashboard = @booking.dashboard
    @booking.destroy
    redirect_to dashboard_path(@booking), status: :see_other
  end

  def accept
    @booking = Booking.find(params[:id])
    @plant = Plant.find(params[:plant_id])
    @booking.update(booking_status: 1)
    redirect_to plant_booking_path(@plant, @booking)
  end

  def decline
    @booking = Booking.find(params[:id])
    @plant = Plant.find(params[:plant_id])
    @booking.update(booking_status: 2)
    redirect_to plant_booking_path(@plant, @booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :message, :total_price, :booking_status)
  end
end
