class MeetupController < ApplicationController
  def index
    @events = Meetup.new.events
    render json: @events
  end

  def show
    @events = Meetup.new.events

  end
end
