class PlacesController < ApplicationController
  def index
    @places = Place.page(params[:page]).per(5)
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(params.require(:place).permit(:name, :description, :url, :latitude, :longitude, :address, :closed, :offers, :images))

    if @place.save
      redirect_to root_path
    else
      render "new"
    end

  end

  def delete
  end
end
