class ProductTypeController < ApplicationController
  def index
    @types = ProductType.all
  end
end
