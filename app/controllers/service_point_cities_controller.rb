class ServicePointCitiesController < ApplicationController
  def index
    @cities = City.all
    content_for :title, 'All Cities'
    content_for :service_point_cities_active, true
  end
end
