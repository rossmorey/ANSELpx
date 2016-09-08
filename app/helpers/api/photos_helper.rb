module Api::PhotosHelper
  def plus_one_view(photos)

    photos.each do |photo|
      photo.views += 1
      photo.save
    end
  end
end
