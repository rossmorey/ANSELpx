class Photo < ActiveRecord::Base
  validates :user_id, :photo_img_url, :width, :height, presence: true

  after_initialize :ensure_fields

  belongs_to :user

  def make_new_url(transform, url)
    result = ""
    url.each_char do |char|
      result << char
      if result.include?("upload") && !result.include?(transform)
        result << transform
      end
    end
    result
  end

  def ensure_fields
    self.views ||= 0
    self.thumbnail_url ||= make_new_url("/c_scale,h_320", self.photo_img_url)
    self.mini_square_url ||= make_new_url("/w_50,h_50,c_fill,g_east", self.photo_img_url)
    self.save
  end
end
