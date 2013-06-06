class ProductStyleController < ApplicationController
  def index
    @styles = ProductStyle.all
  end
end
