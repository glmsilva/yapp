class PlayersController < ApplicationController
  def create
    @room = Room.find_by!(slug_name: params[:room_slug])
    @player = @room.players.create!(player_params)

    session[:player_id] = @player.id

    redirect_to room_path(@room)
  end

  private
  def player_params
    params.require(:player).permit(:name).merge(role: :participant)
  end
end
