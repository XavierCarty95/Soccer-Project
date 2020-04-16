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
    @player = Player.create(player_params)
    if @player.valid? 
    redirect_to players_path(@player)
    else 
      flash[:errors] = @player.errors.full_messages
      redirect_to new_player_path
     
    end

  end 



  def edit
  end

  def destroy 
    @player = Player.find(params[:id])
    @player.destroy

    redirect_to(players_path)
   
   end

  private 

  def player_params 

  params.require(:player).permit(:name , :goals , :assists , :image_url)

  end 
end
