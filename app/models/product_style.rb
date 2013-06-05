class ProductStyle < ActiveRecord::Base
  ################
  ## Attributes ##
  ################
  attr_accessible :name

  ###############
  ## Relations ##
  ###############
  has_many :products
end
