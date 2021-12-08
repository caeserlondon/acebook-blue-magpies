class User < ApplicationRecord
  # has_many :posts
  validates :email, presence: true
  validates :password, presence: true
  validates :name, presence: true
end