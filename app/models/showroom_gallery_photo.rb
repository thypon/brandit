class ShowroomGalleryPhoto < ActiveRecord::Base
  ################
  ## Attributes ##
  ################
  attr_accessible :content
  has_attached_file :content

  ###############
  ## Relations ##
  ###############
  belongs_to :showroom
end
