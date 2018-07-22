require 'pry'
class GamesController < ApplicationController
  # Add your GamesController code here

  def index
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  def create
    @game = Game.create(state: params[:state])
    render json: @game, status: 201
  end

  def update
    @game = Game.update(id: params[:id], state: params[:state])
  end

end
