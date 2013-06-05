class CreateShowroomGalleryPhotos < ActiveRecord::Migration
  def change
    create_table :showroom_gallery_photos do |t|
      t.references :showroom

      t.timestamps
    end
    add_index :showroom_gallery_photos, :showroom_id
  end
end
