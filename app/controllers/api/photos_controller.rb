class Api::PhotosController < ApplicationController
  include Api::PhotosHelper

  def index
    if params["user_id"]
      user = User.find(params["user_id"])
      plus_one_view(user.photos)
      @photos = user.photos
    else
      @photos = Photo.all.shuffle.take(20)
      plus_one_view(@photos)
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
      :width,
      :height
    )
  end
end
