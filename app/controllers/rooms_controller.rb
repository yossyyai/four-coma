class RoomsController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :set_room, only: [:show]

  def index
    query = "SELECT * FROM rooms"
    @rooms = Room.find_by_sql(query)
  end

  def new
    @room = Room.new
  end

  def create
    Room.create(room_params)
    redirect_to root_path
  end

  def show
    @coma = Coma.new
    @comas = @room.comas.includes(:user)
  end

  private

  def set_room
    @room = Room.find(params[:id])
  end
  def room_params
    params.require(:room).permit(:name).merge(user_id: current_user.id)
  end

  def coma_params
    params.permit(:image).merge(room_id: @room.id)
  end

end
