class HomeController < ApplicationController
  def index
    @upcoming_event = Event.upcoming.first
    @previous_event = Event.previous.first
  end

end
