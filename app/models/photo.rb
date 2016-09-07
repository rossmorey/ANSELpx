class Photo < ActiveRecord::Base
  validates :user_id, :photo_img_url, null:false

  after_initialize :ensure_views

  belongs_to :user

  def ensure_views
    self.views ||= 0
  end
end
