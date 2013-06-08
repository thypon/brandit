class ServicePointCitiesController < ApplicationController
  def index
    @cities = City.all
    content_for :title, 'All Cities'
  end
end
