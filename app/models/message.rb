class Message < ApplicationRecord
  belongs_to :user
  has_many :attachments
  scope :active, -> {where(hidden: false)}
  scope :inactive, -> {where(hidden: true)}
end
