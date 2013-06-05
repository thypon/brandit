class Product < ActiveRecord::Base
  belongs_to :product_type
  belongs_to :product_style
  attr_accessible :description, :name

  has_and_belongs_to_many :designers
  has_and_belongs_to_many :services
  has_and_belongs_to_many :showrooms
  has_and_belongs_to_many :shops
end
