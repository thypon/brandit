class ServicePoint < ActiveRecord::Base
  ################
  ## Attributes ##
  ################
  attr_accessible :address, :contacts, :map

  has_attached_file :map

  ###############
  ## Relations ##
  ###############
  belongs_to :city
  belongs_to :service
end
