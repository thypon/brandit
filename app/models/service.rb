class Service < ActiveRecord::Base
  ################
  ## Attributes ##
  ################
  attr_accessible :description, :name

  ###############
  ## Relations ##
  ###############
  has_and_belongs_to_many :products
  has_many :service_points
end
