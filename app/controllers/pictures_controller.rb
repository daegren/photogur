class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(params[:picture])
    if @picture.save
      redirect_to pictures_url, :flash => {:notice => "Picture was saved successfully."}
    else
      flash.now[:error] = "Could not save the picture"
      render :new
    end
  end
end