class Product < ActiveRecord::Base
  ################
  ## Attributes ##
  ################
  attr_accessible :description, :name, :photo
  has_attached_file :photo,
                    :path => ':rails_root/public/images/:class/:id/:style/:basename.:extension',
                    :url => '/images/:class/:id/:style/:basename.:extension'

  ###############
  ## Relations ##
  ###############
  has_and_belongs_to_many :designers
  has_and_belongs_to_many :services
  has_and_belongs_to_many :showrooms
  has_and_belongs_to_many :shops
  belongs_to :product_type
  belongs_to :product_style
  has_many :product_gallery_photos

  def self.best
    #method "group" is to select DISTINCT products
    self.joins(:designers).group(:id)
  end

  def best?
    self.class.best.index self != nil
  end
end
