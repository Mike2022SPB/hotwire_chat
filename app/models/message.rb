class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_many :notifications, as: :notifiable

  scope :sorted, -> { order(:id) }
end
