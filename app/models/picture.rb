class Picture < ActiveRecord::Base
  attr_accessible :title, :artist, :url

  validates :url, :presence => true
end