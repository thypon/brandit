class Event < ActiveRecord::Base
  attr_accessible :description, :link, :major, :name
end
