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
    binding.pry
    @game = Game.find(id: params[:id])
    @game.state = params[:state]
    @game.save
    render json: @game, status: 200
  end

end
