class Designer < ActiveRecord::Base
  attr_accessible :bio, :link, :name

  has_and_belongs_to_many :products
end
