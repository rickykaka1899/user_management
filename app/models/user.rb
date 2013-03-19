class User < ActiveRecord::Base
   attr_accessible :email, :password, :password_confirmation
   #attr_accessible :old_password
  has_secure_password
  before_save { |user| user.email = email.downcase}
  before_save :create_remember_token

  validates :password, presence: true, length: {minimum: 6}
  validates :password_confirmation, presence: true
  #validates :old_password, presence: true
  #validates_confirmation_of :old_password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true , format: {with: VALID_EMAIL_REGEX},
            uniqueness: {case_sensitive: false}
  private
  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
end
