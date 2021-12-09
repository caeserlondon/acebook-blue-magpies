class Post < ApplicationRecord
  # belongs_to :user
  has_many :comments
  has_many :likes, dependent: :destroy #dependent: :destroy will delete likes if post/user is deleted
end
