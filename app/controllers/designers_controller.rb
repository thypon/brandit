class DesignersController < ApplicationController
  def index
  	if id = params[:service_id]
  		service = Service.find(id)
  		@designers = service.designers
  	elsif id = params[:product_id]
  		product = Product.find(id)
  		@designers = product.designers
  	else
  		@designers = Designer.all
  	end
  end

  def show
  	if params[:service_id]
  		@pattern = :igt
  	elsif params[:product_id]
  		@pattern = :i
  	else
  		@pattern = :igt
  	end 

  	@designer = Designer.find(params[:id])
  end

  def next
  	designer = Designer.find(params[:id])

  	if id = params[:service_id]
  		service = Service.find(id)
  		designers = service.designers
  		next_index = designers.index(designer) + 1
  		redirect_to designer_path(designers[next_index])
  	elsif id = params[:product_id]
  		product = Product.find(id)
  		designers = product.designers
  		next_index = designers.index(designer) + 1
  		redirect_to designer_path(designers[next_index])
  	end
  end

  def previous
  	designer = Designer.find(params[:id])

  	if id = params[:service_id]
  		service = Service.find(id)
  		designers = service.designers
  		previous_index = designers.index(designer) - 1
  		redirect_to designer_path(designers[previous_index])
  	elsif id = params[:product_id]
  		product = Product.find(id)
  		designers = product.designers
  		previous_index = designers.index(designer) - 1
  		redirect_to designer_path(designers[previous_index])
  	end
  end

  def up
  	if params[:service_id]
  		redirect_to services_path
  	elsif id = params[:product_id]
  		redirect_to product_path(id)
  	else
  		redirect_to designers_path
  	end 
  end
end
