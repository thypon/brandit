class ShopCitiesController < ApplicationController
  def index
    @cities = City.all
    content_for :title, 'All Cities'
    content_for :shop_cities_active, true
  end

  def show
    redirect_to shop_cities_path
  end
end
