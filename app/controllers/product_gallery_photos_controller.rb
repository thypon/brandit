class ProductGalleryPhotosController < ApplicationController
  # GET /product_gallery_photos
  # GET /product_gallery_photos.json
  def index
    @product = Product.find(params[:product_id])

    content_for :title, "#{@product.name} - Gallery"

    @product_gallery_photos = @product.product_gallery_photos
  end
end
