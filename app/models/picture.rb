class Picture < ActiveRecord::Base
  attr_accessible :title, :artist, :url, :copyrighted

  validates :title, :presence => true
  validates :url,   :presence => true, :format => { :with => /^https?:\/\/.*/, :message => "should contain a valid url"}
end