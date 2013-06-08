class EventsController < ApplicationController
  def index
    if params[:best]
      content_for :title, 'Best Events'
      @events = Event.best
    else
      content_for :title, 'Events'
      @events = Event.all
    end
  end

  def show
    if params[:best]
      @pattern = :igt
    else
      @pattern = :i
    end

    @event = Event.find(params[:id])
    content_for :title, @event.name
  end

  def up
    if params[:best]
      redirect_to events_path, :best => true
    else
      redirect_to events_path
    end
  end
end
