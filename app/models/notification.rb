class Notification < ApplicationRecord
  belongs_to :notifiable, polymorphic: true
  broadcasts_to -> (notification) { :notifications }
end
