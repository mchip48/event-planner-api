class EventsController < ApplicationController
  def index
    events = Event.includes(:attendees)

    render json: events, include: :attendees
  end
end
