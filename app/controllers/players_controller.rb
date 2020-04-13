class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def new

    @player = Player.new

  end

  def create 
  
    @player = Player.create!(player_params)

    redirect_to players_path(@player)

  end 



  def edit
  end

  private 

  def player_params 

  params.require(:player).permit(:name , :goals , :assists)

  end 
end
