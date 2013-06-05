class Service < ActiveRecord::Base
  has_many :service_points

  attr_accessible :description, :name

  has_and_belongs_to_many :products
end
