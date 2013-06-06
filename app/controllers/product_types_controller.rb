class ProductTypesController < ApplicationController
  def index
    @types = ProductType.all
  end
end
