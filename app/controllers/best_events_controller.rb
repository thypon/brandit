class BestEventsController < ApplicationController
  def index
    content_for :title, 'Best Events'
    @events = Event.best
  end

  def show
    #TODO Find a way to take best from url
    content_for :pattern, :igt

    @event = Event.best.find(params[:id])
    content_for :title, @event.name
  end

  def up
    redirect_to best_events_path
  end

  def next
    events = Event.best

    event = Event.find(params[:id])

    next_index = (events.index(event) + 1) % events.length

    redirect_to events[next_index]
  end

  def previous
    events = Event.best

    event = Event.find(params[:id])

    previous_index = events.index(event) - 1

    redirect_to events[previous_index]

  end
end
