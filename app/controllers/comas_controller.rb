class ComasController < ApplicationController
  def create
   coma = Coma.create(coma_params)
   redirect_to "/rooms/#{coma.room.id}"
  end

  private
  def coma_params
    params.require(:coma).permit(:image).merge(user_id: current_user.id, room_id: params[:room_id])
  end
end
