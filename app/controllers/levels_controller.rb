class LevelsController < ApplicationController
  def index
    @levels = Level.all
  end

  def start
    @level = Level.new(params[:level])
      if @level.save
        flash[:notice] = "Let's set your difficulty level."
    end
  end

  def thought
  end

private

  def level_params
    params.require(:level).permit(game_attributes:
      [:day, :week, :month, :day_battle, :com_battle,
       :rare_battle])
  end
end
