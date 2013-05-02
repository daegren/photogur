class PicturesController < ApplicationController

  respond_to :json, :html

  def index
    @pictures = Picture.newest_first
    respond_with @picture
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
      render :new
    end
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])

    if @picture.update_attributes(params[:picture])
      redirect_to "/pictures/#{@picture.id}"
    else
      render :edit
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to pictures_url, :flash => {:notice => "The picture \"#{@picture.title}\" has been deleted."}
  end
end