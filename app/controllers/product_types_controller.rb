class ProductTypesController < ApplicationController
  def index
    @types = ProductType.all
    content_for :title, 'All Types'
    content_for :product_types_active, true
  end
end
