class AddAttachmentContentToShowroomGalleryPhotos < ActiveRecord::Migration
  def self.up
    change_table :showroom_gallery_photos do |t|
      t.attachment :this
    end
  end

  def self.down
    drop_attached_file :showroom_gallery_photos, :this
  end
end
