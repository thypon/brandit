class Showroom < ActiveRecord::Base
  attr_accessible :address, :contacts, :description, :name, :photo

  has_and_belongs_to_many :products

  has_attached_file :photo
end
