class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.create(flats_params)
    redirect_to flats_path
  end

  private

  def flats_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night)
  end
end

