class EntriesController < ApplicationController
  def index
    @entries = Entry.all
    @places = Place.all
    @entry = Entry.new
  end

  def new
    @place = Place.find(params[:place_id])
    @entry = Entry.new
    @entry.place_id = @place.id
  end

  def create
    @entry = Entry.new(params["entry"].permit("title", "description", "occurred_on", "place_id"))
    @entry.save
    redirect_to "/places/#{@entry.place_id}"
  end
end
