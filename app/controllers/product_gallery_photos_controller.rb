class ProductGalleryPhotosController < ApplicationController
  # GET /product_gallery_photos
  # GET /product_gallery_photos.json
  def index
    @product = Product.find(params[:product_id])

    content_for :title, "#{@product.name} - Gallery"

    @product_gallery_photos = @product.product_gallery_photos
  end

  # GET /products/:product_id/product_gallery_photos/1
  def show
    @product = Product.find(params[:product_id])
    @product_gallery_photo = ProductGalleryPhoto.find(params[:id])
  end

  # GET /products/:product_id/product_gallery_photos/new
  def new
    @product = Product.find(params[:product_id])

    @product_gallery_photo = ProductGalleryPhoto.new
  end

  # GET /products/:product_id/product_gallery_photos/1/edit
  def edit
    @product = Product.find(params[:product_id])

    @product_gallery_photo = ProductGalleryPhoto.find(params[:id])
  end

  # POST /product_gallery_photos
  # POST /product_gallery_photos.json
  def create
    @product = Product.find(params[:product_id])

    @product_gallery_photo = ProductGalleryPhoto.new(params[:product_gallery_photo])

    Product.find(params[:product_id]).product_gallery_photos << @product_gallery_photo

    if @product_gallery_photo.save
      redirect_to [@product, @product_gallery_photo], notice: 'Product gallery photo was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /product_gallery_photos/1
  # PUT /product_gallery_photos/1.json
  def update
    @product = Product.find(params[:product_id])

    @product_gallery_photo = ProductGalleryPhoto.find(params[:id])

    if @product_gallery_photo.update_attributes(params[:product_gallery_photo])
      redirect_to [@product, @product_gallery_photo], notice: 'Product gallery photo was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /product_gallery_photos/1
  # DELETE /product_gallery_photos/1.json
  def destroy
    @product = Product.find(params[:product_id])

    @product_gallery_photo = ProductGalleryPhoto.find(params[:id])
    @product_gallery_photo.destroy

    redirect_to product_product_gallery_photos_url
  end
end
