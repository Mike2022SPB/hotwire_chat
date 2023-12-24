class RoomsController < ApplicationController
  def create
    @new_room = Room.new(room_params)

    if @new_room.save
      @new_room.broadcast_append_to :rooms
    end
  end

  def index
    @rooms = Room.all
    @new_room = Room.new
  end

  def show
    @room = Room.find_by!(title: params[:title])
    @messages = @room.messages.includes(:user)
    @new_message = current_user&.messages&.build(room: @room)
  end

  private

  def room_params
    params.require(:room).permit(:title).merge(user: current_user)
  end
end