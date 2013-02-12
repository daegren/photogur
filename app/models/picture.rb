class Picture < ActiveRecord::Base
  attr_accessible :title, :artist, :url
end