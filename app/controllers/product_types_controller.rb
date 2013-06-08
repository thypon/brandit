class ProductTypesController < ApplicationController
  def index
    @types = ProductType.all
    content_for :title, 'All Types'
  end
end
