class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def start
    if params["send_to_levels_start"]
   send_to_levels_start
  end
end



  def thought
  end


private

def games_params
  params.require(:game).permit(:day, :week, :month,
    :day_battle, :com_battle, :rare_battle,
    level_attribtues:[:day, :week, :month, :day_battle, :com_battle,
       :rare_battle])
  end
end

