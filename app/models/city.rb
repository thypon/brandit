class City < ActiveRecord::Base
  attr_accessible :name

  has_many :shops
  has_many :service_points
end
