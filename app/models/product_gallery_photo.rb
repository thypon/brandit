class ProductGalleryPhoto < ActiveRecord::Base
  belongs_to :product

  has_attached_file :content
end
