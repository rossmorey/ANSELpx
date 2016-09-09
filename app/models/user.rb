class User < ActiveRecord::Base
  attr_reader :password

  validates :password, length: { minimum: 6 }, allow_nil: :true
  validates :password_digest, :username, :session_token, :first_name, :last_name, presence: true
  validates :username, :session_token, uniqueness: true

  after_initialize :ensure_session_token, :ensure_user_photo

  has_many :photos

  has_many :follows,
  foreign_key: :follower_id,
  class_name: :Follow,
  primary_key: :id

  has_many :followings,
  foreign_key: :followed_id,
  class_name: :Follow,
  primary_key: :id

  has_many :followers,
    through: :followings,
    source: :follower

  has_many :followed,
    through: :follows,
    source: :followed

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64(16)
  end

  def reset_token!
    self.session_token = SecureRandom.urlsafe_base64(16)
    self.save!
    self.session_token
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    return false unless user
    user.is_password?(password) ? user : false
  end

  def views
    total_views = 0
    self.photos.each do |photo|
      total_views += photo.views
    end
    total_views
  end

  def photo_count
    self.photos.count
  end

  def photo_samples
    self.photos.take(5)
  end

  def follower_count
    self.followers.count
  end

  def followed_count
    self.followed.count
  end

  def ensure_user_photo
    self.user_img_url ||= "http://res.cloudinary.com/dhorsi7vf/image/upload/v1473355795/guestuser_gdidkh.png"
    self.save!
  end
end
