class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :email, uniqueness: true, format: /@/
  validates :password, presence: true, on: :create
  validates :password, length: { in: 8..20 }
  validates :password, confirmation: true
end
