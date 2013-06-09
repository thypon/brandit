class ProductStylesController < ApplicationController
  def index
    @styles = ProductStyle.all
    content_for :title, 'All Styles'
    content_for :product_styles_active, true
  end

  def show
    redirect_to product_styles_path
  end
end
