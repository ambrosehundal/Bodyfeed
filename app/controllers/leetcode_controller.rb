class LeetcodeController < ApplicationController
  def index
    #@events = Meetup.new.events
    #render json: @events
    @leetcode = Leetcode.new.coding_events
    render json: @leetcode
  end

  def show
  #  @leetevents = Leetcode.new.events

  end
end
