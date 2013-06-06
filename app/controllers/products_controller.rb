class ProductsController < ApplicationController
  def index
    if id = params[:product_style_id]
      product_style = ProductStyle.find(id)
      @title = product_style.name
      @products = product_style.products
    elsif id = params[:product_type_id]
      product_type = ProductType.find(id)
      @title = product_type.name
      @products = product_type.products
    end
  end

  def show
    @product = Product.find(params[:id])
  end
end
