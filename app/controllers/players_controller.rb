class PlayersController < ApplicationController
  def index
  end

  def new

  end

  def show
    @player = Player.find(params[:id])
  end

  def edit
  end
end
