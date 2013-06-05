class AddAttachmentContentToShowroomGalleryPhotos < ActiveRecord::Migration
  def self.up
    change_table :showroom_gallery_photos do |t|
      t.attachment :content
    end
  end

  def self.down
    drop_attached_file :showroom_gallery_photos, :content
  end
end
