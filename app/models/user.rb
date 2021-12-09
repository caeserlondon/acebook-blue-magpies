class User < ApplicationRecord
  # has_many :posts
  has_secure_password
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
  validates :password_digest, length: {:within => 8..20}
  validates :name, presence: true
 
end