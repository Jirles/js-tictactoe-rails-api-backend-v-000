require 'pry'
class GamesController < ApplicationController
  # Add your GamesController code here

  def index
  end

  def show
    @game = Game.find(params[:id])
    render json: @game, status: 200
  end

  def create
    @game = Game.create(state: games_params)
    render json: @game, status: 201
  end

  def update
  end

  private

  def games_params
    params.require(:state)
  end
end
