class LeetcodeController < ApplicationController
  def index
    #@events = Meetup.new.events
    #render json: @events
    @leetcode = Leetcode.new.events
    render json: @vibes
  end

  def show
    @events = Leetcode.all.events

  end
end
