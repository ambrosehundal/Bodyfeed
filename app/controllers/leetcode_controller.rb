class LeetcodeController < ApplicationController
  def index
    #@events = Meetup.new.events
    #render json: @events
    @leetcode = Leetcode.new.events
    render json: @leetcode
  end

  def show
    @events = Leetcode.new.events

  end
end
