class Picture < ActiveRecord::Base
  attr_accessible :title, :artist, :url

  validates :title, :presence => true
  validates :url,   :presence => true, :format => { :with => /^https?:\/\/.*/, :message => "should contain a valid url"}
end