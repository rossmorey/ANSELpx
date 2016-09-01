class Api::PhotosController < ApplicationController
  def index
    debugger
    @photos = Photo.all
  end


end
