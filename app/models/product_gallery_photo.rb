class ProductGalleryPhoto < ActiveRecord::Base
  ################
  ## Attributes ##
  ################
  attr_accessible :this
  has_attached_file :this

  ###############
  ## Relations ##
  ###############
  belongs_to :product

  validates_attachment_presence :this

  ######################
  ## Simple Delegator ##
  ######################
  def method_missing(method, *args, &block)
    begin
      this.public_send(method, *args, &block)
    rescue
      super
    end
  end
end
