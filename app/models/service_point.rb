class ServicePoint < ActiveRecord::Base
  ################
  ## Attributes ##
  ################
  attr_accessible :address, :contacts, :map
  has_attached_file :map, :default_url => '/assets/google-map.png'

  ###############
  ## Relations ##
  ###############
  belongs_to :city
  belongs_to :service
end
