class User < ApplicationRecord
  has_many :messages
  has_many :attachments, through: :messages
  validates :username, :password, presence: true
  validates :username, uniqueness: true

  has_secure_password
end
