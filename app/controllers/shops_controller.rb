class ShopsController < ApplicationController
  def index
    if id = params[:product_id]
      product = Product.find(id)
      @previous = product
      content_for :title, product.name
      @shops = product.shops
    elsif id = params[:shop_city_id]
      city = City.find(id)
      @previous = city
      content_for :title, city.name
      @shops = city.shops
    else
      redirect_to shop_cities_path
    end
  end

  def show
    content_for :pattern, :i

    @shop = Shop.find(params[:id])
    content_for :title, @shop.address
  end

  def up
    if id = params[:product_id]
      product = Product.find(id)
      if params[:id] ## Non sei nella pagina di transizione
        redirect_to product_shops_path(product)
      else ## Sei nella pagina di transizione
        redirect_to product
      end
    elsif id = params[:shop_city_id]
      city = City.find(id)
      if params[:id]
        redirect_to shop_city_shops_path(city)
      else
        redirect_to shop_cities_path
      end
    end
  end
end
