class Service < ActiveRecord::Base
  has_many :service_points

  attr_accessible :description, :name
end
