class Product < ActiveRecord::Base
  belongs_to :product_type
  belongs_to :product_style
  attr_accessible :description, :name
end
