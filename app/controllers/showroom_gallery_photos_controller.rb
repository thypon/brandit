class ShowroomGalleryPhotosController < ApplicationController
  # GET /showroom_gallery_photos
  # GET /showroom_gallery_photos.json
  def index
    @showroom = Showroom.find(params[:showroom_id])

    content_for :title, "#{@showroom.name} - Gallery"

    @showroom_gallery_photos = @showroom.showroom_gallery_photos
  end
end
