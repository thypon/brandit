class ShowroomGalleryPhoto < ActiveRecord::Base
  belongs_to :showroom

  has_attached_file :content
end
