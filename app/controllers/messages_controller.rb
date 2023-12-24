class MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :create_message_using_api

  def create
    @new_message = current_user.messages.build(strong_params)

    if @new_message.save
      @new_message.broadcast_append_to @new_message.room
    end
  end

  def create_message_using_api
    api_message = Message.create!(
      body: params[:room_message],
      room_id: params[:room_id],
      user: User.find_by(email: "anonym@anonym.com")
    )
  end

  private

  def strong_params
    params.require(:message).permit(:body, :room_id)
  end
end
