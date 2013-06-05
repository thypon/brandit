class Designer < ActiveRecord::Base
  ################
  ## Attributes ##
  ################
  attr_accessible :bio, :link, :name, :photo
  has_attached_file :photo

  ###############
  ## Relations ##
  ###############
  has_and_belongs_to_many :products
end
