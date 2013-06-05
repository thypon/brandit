class Designer < ActiveRecord::Base
  attr_accessible :bio, :link, :name, :photo

  has_and_belongs_to_many :products

  has_attached_file :photo
end
