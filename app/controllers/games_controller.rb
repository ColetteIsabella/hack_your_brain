class GamesController < ApplicationController
  def index
    @levels = Level.all
 end

  def start
    @level = Level.new(params[:level])
    if @level.save
      flash[:notice] = "Let's set your difficulty level."
    if params["send_to_levels_start"]
      send_to_levels_start
    end
  end
end

  def create
  end


  def thought
    if params["send_to_levels_thought"]
   send_to_levels_thought
  end
end

private

  def game_params
    params.require(:game).permit(:day, :week, :month,
    :day_battle, :com_battle, :rare_battle,
    level_attribtues:[:day, :week, :month, :day_battle, :com_battle,
    :rare_battle])
  end
end


