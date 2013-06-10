class EventsController < ApplicationController
  def index
    content_for :title, 'Events'
    @events = Event.all
  end

  def show
    #TODO Find a way to take best from url
    content_for :pattern, :i

    @event = Event.find(params[:id])
    content_for :title, @event.name
  end

  def up
    redirect_to events_path
  end
end
