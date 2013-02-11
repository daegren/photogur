class PicturesController < ApplicationController

  def index
    @pictures = [
      'http://monicao.s3.amazonaws.com/bitmaker/house.jpg', 
      'http://monicao.s3.amazonaws.com/bitmaker/wave.jpg', 
      'http://monicao.s3.amazonaws.com/bitmaker/girl.jpg'
    ]
  end
end