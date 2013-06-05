class Shop < ActiveRecord::Base
  ################
  ## Attributes ##
  ################
  attr_accessible :address, :contacts, :description

  ###############
  ## Relations ##
  ###############
  belongs_to :city
  has_and_belongs_to_many :products
end
