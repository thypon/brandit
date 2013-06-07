class ShowroomsController < ApplicationController
  def index
    if id = params[:product_id]
      product = Product.find(id)
      @title = product.name
      @showrooms = product.showrooms
    else
      @title = "All Showrooms"
      @showrooms = Showroom.all
    end
  end

  def show
    @pattern = :i

    @showroom = Showroom.find(params[:id])
    @title = @showroom.name
  end

  def up
    if id = params[:product_id]
      product = Product.find(id)
      redirect_to product_showrooms_path(product)
    else
      redirect_to products_path
    end
  end
end
