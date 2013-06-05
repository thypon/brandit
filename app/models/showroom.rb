class Showroom < ActiveRecord::Base
  attr_accessible :address, :contacts, :description, :name

  has_and_belongs_to_many :products
end
