class EventsController < ApplicationController
  def index
    # indexes all events
    @events = Event.all
  end
end
