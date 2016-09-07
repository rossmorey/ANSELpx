class Api::PhotosController < ApplicationController
  def index
    if params["user_id"]
      user = User.find(params["user_id"])
      @photos = user.photos
    else
      @photos = Photo.all.shuffle
    end
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      render 'api/photos/show'
    else
      render json: @photo.errors.full_messages, status: 422
    end
  end


  private
  def photo_params
    params.require(:photo).permit(
      :user_id,
      :photo_img_url,
      :title,
      :description,
      :lat,
      :lng
    )
  end
end
