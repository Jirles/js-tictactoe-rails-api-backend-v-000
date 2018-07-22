require 'pry'
class GamesController < ApplicationController
  # Add your GamesController code here

  def index
  end

  def show
  end

  def create
    binding.pry 
    @game = Game.create(state: params["state"].serialize())
  end

  def update
  end

  private

  def games_params
    params.require(:state)
  end
end
