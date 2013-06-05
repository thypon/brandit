class ServicePoint < ActiveRecord::Base
  belongs_to :city
  belongs_to :service
  attr_accessible :address, :contacts
end
