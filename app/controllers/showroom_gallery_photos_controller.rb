class ShowroomGalleryPhotosController < ApplicationController
  # GET /showroom_gallery_photos
  # GET /showroom_gallery_photos.json
  def index
    @showroom = Showroom.find(params[:showroom_id])

    content_for :title, "#{@showroom.name} - Gallery"

    @showroom_gallery_photos = @showroom.showroom_gallery_photos
  end

  # GET /showrooms/:showroom_id/showroom_gallery_photos/1


  # GET /showrooms/:showroom_id/showroom_gallery_photos/new


  # GET /showrooms/:showroom_id/showroom_gallery_photos/1/edit


  # POST /showroom_gallery_photos
  # POST /showroom_gallery_photos.json


  # PUT /showroom_gallery_photos/1
  # PUT /showroom_gallery_photos/1.json

  # DELETE /showroom_gallery_photos/1
  # DELETE /showroom_gallery_photos/1.json
end
