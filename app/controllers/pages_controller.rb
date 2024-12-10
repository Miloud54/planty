class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @plants = Plant.all
    if params[:query].present?
      @plants = @plants.search_by_name(params[:query])
    end
  end

  def dashboard
    @plants = Plant.where(user_id: current_user)
    @bookings = Booking.where(plant_id: @plants.pluck(:id))
    @pending_bookings = @bookings.where(booking_status: 'pending')
    @accepted_bookings = @bookings.where(booking_status: 'accepted')
    @booking_requests = Booking.where(user_id: current_user)
  end
end
