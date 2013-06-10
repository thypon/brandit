class ShowroomsController < ApplicationController
  def index
    if id = params[:product_id]
      product = Product.find(id)
      content_for :title, product.name
      @previous = product
      @showrooms = product.showrooms
    else
      content_for :title, 'All Showrooms'
      @showrooms = Showroom.all
      content_for :showrooms_active, true
    end
  end

  def gallery
    @showroom = Showroom.find(params[:id])
    content_for :title, "#{@showroom.name} - Gallery"
    @photos = @showroom.showroom_gallery_photos
  end

  def show
    content_for :pattern, :i
    content_for :split, true

    @showroom = Showroom.find(params[:id])
    content_for :title, @showroom.name
  end

  def up
    if id = params[:product_id]
      product = Product.find(id)
      if params[:id]
        redirect_to product_showrooms_path(product)
      else
        redirect_to product
      end
    else
      redirect_to products_path
    end
  end
end
