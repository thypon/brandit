class AddAttachmentContentToProductGalleryPhotos < ActiveRecord::Migration
  def self.up
    change_table :product_gallery_photos do |t|
      t.attachment :this
    end
  end

  def self.down
    drop_attached_file :product_gallery_photos, :this
  end
end
