class ServicePointsController < ApplicationController
  def index
  	if id = params[:service_point_city_id]
  		city = City.find(id)
      @previous = city
  		@service_points = city.service_points
  		content_for :title, city.name
  	elsif id = params[:service_id]
  		service = Service.find(id)
      @previous = service
  		@service_points = service.service_points
      content_for :title, service.name
  	end
  end

  def show
  	@pattern = :i

  	@service_point = ServicePoint.find(params[:id])
    content_for :title, @service_point.address
  end

  def up
  	if params[:service_point_city_id]
  		city = City.find(id)
  		redirect_to service_point_city_service_points_path(city)
  	elsif id = params[:service_id]
  		service = Service.find(id)
  		redirect_to service_service_points_path(service)
  	end
  end
end
