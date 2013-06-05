class Event < ActiveRecord::Base
  ################
  ## Attributes ##
  ################
  attr_accessible :description, :link, :major, :name

  #############
  ## Helpers ##
  #############
  def self.best
    self.where("MAJOR = 1")
  end
end
