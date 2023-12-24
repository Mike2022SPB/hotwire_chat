class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user

  scope :sorted, -> { order(:id) }
end
