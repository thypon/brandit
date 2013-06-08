class ProductStylesController < ApplicationController
  def index
    @styles = ProductStyle.all
    content_for :title, 'All Styles'
  end
end
