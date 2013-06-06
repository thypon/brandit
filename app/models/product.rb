class Product < ActiveRecord::Base
  ################
  ## Attributes ##
  ################
  attr_accessible :description, :name, :photo
  has_attached_file :photo

  ###############
  ## Relations ##
  ###############
  has_and_belongs_to_many :designers
  has_and_belongs_to_many :services
  has_and_belongs_to_many :showrooms
  has_and_belongs_to_many :shops
  belongs_to :product_type
  belongs_to :product_style
  has_many :product_gallery_photos
end
