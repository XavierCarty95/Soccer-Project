class LeaguesController < ApplicationController
  def index
    @leagues = League.all 
  end

  
  def new
  end

 

  def show
    @league = League.find(params[:id])
    hash = { 1 => 2 , 2 => 30, 3 => 8  }
    @results = api(hash[@league.id])
  end

  

  def edit
  end


  
end
