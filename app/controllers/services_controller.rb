class ServicesController < ApplicationController
  def index
  	if id = params[:designer_id]
  		designer = Designer.find(id)
      @previous = designer
  		@services = designer.services
      content_for :title, designer.name
  	elsif id = params[:product_id]
  		product = Product.find(id)
      @previous = product
  		@services = product.services
      content_for :title, product.name
  	else
  		@services = Service.all
      content_for :title, 'All Services'
      content_for :services_active, true
  	end
  end

  def show
  	if params[:designer_id]
      content_for :pattern, :igt
  	elsif params[:product_id]
      content_for :pattern, :i
    elsif id = params[:service_point_id]
      content_for :pattern, :none
  	else
      content_for :pattern, :igt
    end

	  @service = Service.find(params[:id])
    content_for :title, @service.name
  end

  def up
  	if id = params[:designer_id]
  		designer = Designer.find(id)
      if params[:id]
  		  redirect_to designer_path(designer)
      else
        redirect_to designer
      end
  	elsif id = params[:product_id]
  		product = Product.find(id)
      if params[:id]
  		  redirect_to product_path(product)
      else
        redirect_to product
      end
  	else
  		redirect_to services_path
  	end
  end

  def next
  	service = Service.find(params[:id])

  	if id = params[:designer_id]
  		designer = Designer.find(id)
  		services = designer.services
  		next_index = (services.index(service) + 1) % services.length
  		redirect_to designer_service_path(designer, services[next_index])
  	elsif id = params[:product_id]
  		product = Product.find(id)
  		services = product.services
  		next_index = (services.index(service) + 1) % services.length
  		redirect_to product_service_path(product, services[next_index])
    else
      services = Service.all
      next_index = (services.index(service) + 1) % services.length
      redirect_to services[next_index]
  	end
  end

  def previous
  	service = Service.find(params[:id])

  	if id = params[:designer_id]
  		designer = Designer.find(id)
  		services = designer.services
  		previous_index = services.index(service) - 1
  		redirect_to designer_service_path(designer, services[previous_index])
  	elsif id = params[:product_id]
  		product = Product.find(id)
  		services = product.services
  		previous_index = services.index(service) - 1
  		redirect_to product_service_path(product, services[previous_index])
    else
      services = Service.all
      previous_index = services.index(service) - 1
      redirect_to services[previous_index]
    end
  end
end
