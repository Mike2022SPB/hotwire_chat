class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_many :notifications, as: :notifiable

  scope :sorted, -> { order(:id) }

  after_create :create_notification
  broadcasts_to -> (message) { :messages }

  def create_notification
    notification = self.notifications.create!(
      room_message: "New message: #{self.body}",
      room_title: "Room title: #{self.room.title}"
    )
  end
end
