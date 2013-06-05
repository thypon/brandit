class Product < ActiveRecord::Base
  belongs_to :product_type
  belongs_to :product_style
  attr_accessible :description, :name

  has_and_belongs_to_many :designers
end
