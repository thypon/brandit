class ServicePointsController < ApplicationController
  def index
  	if id = params[:service_point_city_id]
  		city = City.find(id)
  		@service_points = city.service_points
  		@title = city.name
  	elsif id = params[:service_id]
  		service = Service.find(id)
  		@service_points = service.service_points
  		@title = service.name
  	end
  end

  def show
  	@pattern = :i
  	@service_point = ServicePoint.find(params[:id])
  end

  def next
  	service_point = ServicePoint.find(params[:id])

  	if id = params[:service_point_city_id]
  		city = City.find(id)
  		service_points = city.service_points
  		next_index = service_points.index(service_point) + 1
  		redirect_to service_point_city_service_point_path(city, service_points[next_index])
  	elsif id = params[:service_id]
  		service = Service.find(id)
  		service_points = service.service_points
  		next_index = service_points.index(service_point) + 1
  		redirect_to service_service_point_path(service, service_points[next_index])
  	end
  end

  def previous
  	service_point = ServicePoint.find(params[:id])

  	if id = params[:service_point_city_id]
  		city = City.find(id)
  		service_points = city.service_points
  		previous_index = service_points.index(service_point) - 1
  		redirect_to service_point_city_service_point_path(city, service_points[previous_index])
  	elsif id = params[:service_id]
  		service = Service.find(id)
  		service_points = service.service_points
  		previous_index = service_points.index(service_point) - 1
  		redirect_to service_service_point_path(service, service_points[previous_index])
  	end
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
