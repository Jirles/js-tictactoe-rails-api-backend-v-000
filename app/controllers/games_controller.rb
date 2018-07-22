class GamesController < ApplicationController
  # Add your GamesController code here
  def index
  end

  def show
  end

  def create

  end

  def update
  end

  private

  def games_parms
    params.require(:state)
  end
end
