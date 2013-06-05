class AddAttachmentContentToProductGalleryPhotos < ActiveRecord::Migration
  def self.up
    change_table :product_gallery_photos do |t|
      t.attachment :content
    end
  end

  def self.down
    drop_attached_file :product_gallery_photos, :content
  end
end
