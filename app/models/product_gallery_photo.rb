class ProductGalleryPhoto < ActiveRecord::Base
  attr_accessible :content
  has_attached_file :content

  belongs_to :product
end
