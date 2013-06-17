class Designer < ActiveRecord::Base
  ################
  ## Attributes ##
  ################
  attr_accessible :bio, :link, :name, :photo
  has_attached_file :photo,
                    :path => ':rails_root/public/images/:class/:id/:style/:basename.:extension',
                    :url => '/images/:class/:id/:style/:basename.:extension'

  ###############
  ## Relations ##
  ###############
  has_and_belongs_to_many :products
  has_and_belongs_to_many :services
end
