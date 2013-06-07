class ServicePointCitiesController < ApplicationController
  def index
    @cities = City.all
  end
end
