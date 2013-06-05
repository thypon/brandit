class Event < ActiveRecord::Base
  attr_accessible :description, :link, :major, :name

  def self.best
    self.where("MAJOR = 1")
  end
end
