class ProductStylesController < ApplicationController
  def index
    @styles = ProductStyle.all
    content_for :title, 'All Styles'
    content_for :product_styles_active, true
  end
end
