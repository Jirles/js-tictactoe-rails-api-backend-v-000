require 'pry'
class GamesController < ApplicationController
  # Add your GamesController code here

  def index
  end

  def show
  end

  def create
    @game = Game.create(state: games_params)
  end

  def update
  end

  private

  def games_params
    params.require(:state)
  end
end
