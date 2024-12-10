class PlantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @plants = Plant.all
  end

  def show
    @plant = Plant.find(params[:id])
    @booking = Booking.new
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(strong_params)
    if @plant.save
      redirect_to dashboard_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def strong_params
    params.require(:plant).permit(:name, :watering, :image, :sunlight, :indoor, :price_per_day)
  end
end
