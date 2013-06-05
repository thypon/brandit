class CreateProductGalleryPhotos < ActiveRecord::Migration
  def change
    create_table :product_gallery_photos do |t|
      t.references :product

      t.timestamps
    end
    add_index :product_gallery_photos, :product_id
  end
end
