class ShopCitiesController < ApplicationController
  def index
    @cities = City.all
  end
end
