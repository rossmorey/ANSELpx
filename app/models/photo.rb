class Photo < ActiveRecord::Base
  validates :user_id, :photo_img_url, presence: true

  after_initialize :ensure_views

  belongs_to :user

  def ensure_views
    self.views ||= 0
  end
end
