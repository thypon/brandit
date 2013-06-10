class Showroom < ActiveRecord::Base
  ################
  ## Attributes ##
  ################
  attr_accessible :address, :contacts, :description, :name, :photo, :map
  has_attached_file :photo
  has_attached_file :map, :default_url => '/assets/google-map.png'

  ###############
  ## Relations ##
  ###############
  has_and_belongs_to_many :products
  has_many :showroom_gallery_photos
end
