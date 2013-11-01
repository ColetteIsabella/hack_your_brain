class LevelsController < ApplicationController
  def index

  end

  def start
    @levels = Level.all

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
