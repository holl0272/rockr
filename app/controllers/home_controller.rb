class HomeController < ApplicationController
  def index
  end

  def new_venues
    @venue = Venue.new
  end

  def new_concerts
    @concert = Concert.new
    @venues = Venue.all
  end

  def create_new_venue
    @venue = Venue.create( params[:venue] )
  end

  def create_new_concert
    @concert = Concert.create( params[:concert] )
    venue = Venue.find( params[:venues_select] )
    venue.concerts << @concert
  end
end
