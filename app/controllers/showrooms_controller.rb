class ShowroomsController < ApplicationController
  def index
    if id = params[:product_id]
      product = Product.find(id)
      content_for :title, product.name
      @showrooms = product.showrooms
    else
      content_for :title, 'All Showrooms'
      @showrooms = Showroom.all
    end
  end

  def gallery
    @showroom = Showroom.find(id)
    content_for :title, "#{@showroom.name} - Gallery"
    @photos = @showroom.showroom_gallery_photos
  end

  def show
    @pattern = :i

    @showroom = Showroom.find(params[:id])
    content_for :title, @showroom.name
  end

  def up
    if id = params[:product_id]
      product = Product.find(id)
      redirect_to product_showrooms_path(product)
    else
      redirect_to products_path
    end
  end
end
