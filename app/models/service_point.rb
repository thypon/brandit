class ServicePoint < ActiveRecord::Base
  ################
  ## Attributes ##
  ################
  attr_accessible :address, :contacts

  ###############
  ## Relations ##
  ###############
  belongs_to :city
  belongs_to :service
end
