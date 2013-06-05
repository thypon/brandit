class Shop < ActiveRecord::Base
  belongs_to :city
  attr_accessible :address, :contacts, :description

  has_and_belongs_to_many :products
end
