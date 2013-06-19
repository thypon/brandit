class ShowroomGalleryPhotosController < ApplicationController
  # GET /showroom_gallery_photos
  # GET /showroom_gallery_photos.json
  def index
    @showroom = Showroom.find(params[:showroom_id])

    content_for :title, "#{@showroom.name} - Gallery"

    @showroom_gallery_photos = @showroom.showroom_gallery_photos
  end

  # GET /showrooms/:showroom_id/showroom_gallery_photos/1
  def show
    @showroom = Showroom.find(params[:showroom_id])
    @showroom_gallery_photo = ShowroomGalleryPhoto.find(params[:id])
  end

  # GET /showrooms/:showroom_id/showroom_gallery_photos/new
  def new
    @showroom = Showroom.find(params[:showroom_id])

    @showroom_gallery_photo = ShowroomGalleryPhoto.new
  end

  # GET /showrooms/:showroom_id/showroom_gallery_photos/1/edit
  def edit
    @showroom = Showroom.find(params[:showroom_id])

    @showroom_gallery_photo = ShowroomGalleryPhoto.find(params[:id])
  end

  # POST /showroom_gallery_photos
  # POST /showroom_gallery_photos.json
  def create
    @showroom = Showroom.find(params[:showroom_id])

    @showroom_gallery_photo = ShowroomGalleryPhoto.new(params[:showroom_gallery_photo])

    Showroom.find(params[:showroom_id]).showroom_gallery_photos << @showroom_gallery_photo

    if @showroom_gallery_photo.save
      redirect_to [@showroom, @showroom_gallery_photo], notice: 'Showroom gallery photo was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /showroom_gallery_photos/1
  # PUT /showroom_gallery_photos/1.json
  def update
    @showroom = Showroom.find(params[:showroom_id])

    @showroom_gallery_photo = ShowroomGalleryPhoto.find(params[:id])

    if @showroom_gallery_photo.update_attributes(params[:showroom_gallery_photo])
      redirect_to [@showroom, @showroom_gallery_photo], notice: 'Showroom gallery photo was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /showroom_gallery_photos/1
  # DELETE /showroom_gallery_photos/1.json
  def destroy
    @showroom = Showroom.find(params[:showroom_id])

    @showroom_gallery_photo = ShowroomGalleryPhoto.find(params[:id])
    @showroom_gallery_photo.destroy

    redirect_to showroom_showroom_gallery_photos_url
  end
end
