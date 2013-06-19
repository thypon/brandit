class ProductGalleryPhotosController < ApplicationController
  # GET /product_gallery_photos
  # GET /product_gallery_photos.json
  def index
    @product = Product.find(params[:product_id])

    content_for :title, "#{@product.name} - Gallery"

    @product_gallery_photos = @product.product_gallery_photos
  end

  # GET /products/:product_id/product_gallery_photos/1


  # GET /products/:product_id/product_gallery_photos/new


  # GET /products/:product_id/product_gallery_photos/1/edit


  # POST /product_gallery_photos
  # POST /product_gallery_photos.json


  # PUT /product_gallery_photos/1
  # PUT /product_gallery_photos/1.json


  # DELETE /product_gallery_photos/1
  # DELETE /product_gallery_photos/1.json
end
