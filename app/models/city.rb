class City < ActiveRecord::Base
  ################
  ## Attributes ##
  ################
  attr_accessible :name

  ###############
  ## Relations ##
  ###############
  has_many :shops
  has_many :service_points
end
