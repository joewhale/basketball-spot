class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end

  def create
    Place.create(place_params)
    redirect_to root_path
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def place_params
    params.require(:place).permit(:name, :description, :address, :restroom, :water, :parking)
  end
end
