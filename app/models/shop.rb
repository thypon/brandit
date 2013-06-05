class Shop < ActiveRecord::Base
  belongs_to :city
  attr_accessible :address, :contacts, :description
end
