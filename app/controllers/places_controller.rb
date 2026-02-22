class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def show
    @place = Place.find(params[:id])
    @entries = @place.entries
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(params["place"].permit("name"))
    if @place.save
      @entry = Entry.new(params["entry"].permit("description", "occurred_on"))
      @entry.place_id = @place.id
      @entry.title = "First Visit"
      @entry.save
    end
    redirect_to "/places"
  end
end
