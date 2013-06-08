class EventsController < ApplicationController
  def index
    content_for :title, 'Best Events'
    @events = Event.best
  end

  def best
    content_for :title, 'Events'
    @events = Event.all

    render 'index'
  end

  def show
    #TODO Find a way to take best from url
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
