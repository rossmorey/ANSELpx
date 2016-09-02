class Photo < ActiveRecord::Base
  validates :user_id, :photo_img_url, null:false

  belongs_to :user

end
