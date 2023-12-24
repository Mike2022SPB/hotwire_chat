class MessagesController < ApplicationController
  def create
    @new_message = current_user.messages.build(strong_params)

    if @new_message.save
      @notification = @new_message.notifications.create!(
        room_message: "New message: #{@new_message.body}",
        room_title: "Room title: #{@new_message.room.title}"
      )
      @new_message.broadcast_append_to @new_message.room
    end
  end

  private

  def strong_params
    params.require(:message).permit(:body, :room_id)
  end
end
