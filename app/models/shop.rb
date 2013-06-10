class Shop < ActiveRecord::Base
  ################
  ## Attributes ##
  ################
  attr_accessible :address, :contacts, :description, :map

  has_attached_file :map

  ###############
  ## Relations ##
  ###############
  belongs_to :city
  has_and_belongs_to_many :products
end
