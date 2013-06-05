class ShowroomGalleryPhoto < ActiveRecord::Base
  ################
  ## Attributes ##
  ################
  attr_accessible :this
  has_attached_file :this

  ###############
  ## Relations ##
  ###############
  belongs_to :showroom
end
