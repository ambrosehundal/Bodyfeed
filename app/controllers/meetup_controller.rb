class MeetupController < ApplicationController
  def index
    #@events = Meetup.new.events
    #render json: @events
    @vibes = Meetup.new.vibrant
    render json: @vibes
  end

  def show
    @events = Meetup.new.events

  end
end
