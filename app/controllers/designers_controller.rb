class DesignersController < ApplicationController
  def index
  	if id = params[:service_id]
  		service = Service.find(id)
      @previous = service
  		@designers = service.designers
      content_for :title, service.name
  	elsif id = params[:product_id]
  		product = Product.find(id)
      @previous = product
  		@designers = product.designers
  		content_for :title, product.name
    else
  		@designers = Designer.all
      @previous = @designers
      content_for :title, 'All Designers'
      content_for :designers_active, true
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
    content_for :title, @designer.name
  end

  def next
  	designer = Designer.find(params[:id])

  	if id = params[:service_id]
  		service = Service.find(id)
  		designers = service.designers
  		next_index = designers.index(designer) + 1
  		redirect_to [service, designers[next_index]]
  	elsif id = params[:product_id]
  		product = Product.find(id)
  		designers = product.designers
  		next_index = designers.index(designer) + 1
  		redirect_to [service, designers[next_index]]
    else
      designers = Designer.all
      next_index = designers.index(designer) + 1
      #redirect_to designer_path(designers[next_index])
      redirect_to designers[next_index]
  	end
  end

  def previous
  	designer = Designer.find(params[:id])

  	if id = params[:service_id]
  		service = Service.find(id)
  		designers = service.designers
  		previous_index = designers.index(designer) - 1
  		redirect_to [service, designers[previous_index]]
  	elsif id = params[:product_id]
  		product = Product.find(id)
  		designers = product.designers
  		previous_index = designers.index(designer) - 1
  		redirect_to [service, designers[previous_index]]
    else
      designers = Designer.all
      previous_index = designers.index(designer) - 1
      redirect_to designers[previous_index]
    end
  end

  def up
  	if params[:service_id]
  		service = Service.find(id)
      if params[:id]
        redirect_to service_designers_path(service)
      else
        redirect_to service
      end
    elsif id = params[:product_id]
      product = Product.find(id)
      if params[:id]
        redirect_to product_designers_path(product)
      else
        redirect_to product
      end
  	else
  		redirect_to designers_path
  	end 
  end
end
