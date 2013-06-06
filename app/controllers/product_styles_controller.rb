class ProductStylesController < ApplicationController
  def index
    @styles = ProductStyle.all
  end
end
