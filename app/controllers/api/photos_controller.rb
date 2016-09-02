class Api::PhotosController < ApplicationController
  def index
    # debugger
    @photos = Photo.all
  end

  def create
    @photo = Photo.new(photo_params)

  end


  private
  def photo_params
    params.require(:photo).permit(:)
  end
end
