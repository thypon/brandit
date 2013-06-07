class ShopsController < ApplicationController
  def index
    if id = params[:product_id]
      product = Product.find(id)
      @title = product.name
      @shops = product.shops
    elsif id = params[:shop_city_id]
      city = City.find(id)
      @title = city.name
      @shops = city.shops
    end
  end

  def show
    @pattern = :i

    @shop = Shop.find(params[:id])
    @title = @shop.name
  end

  def up
    if id = params[:product_id]
      product = Product.find(id)
      redirect_to product_shops_path(product)
    elsif id = params[:shop_city_id]
      city = City.find(id)
      redirect_to shop_city_shops_path(city)
    end
  end
end
