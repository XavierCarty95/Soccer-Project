class LeaguesController < ApplicationController
  def index
    @leagues = League.all 
  end

  
  def new
  end

 

  def show
    @league = League.find(params[:id])
    @results = api(@league.location)
  end

  

  def edit
  end


  
end
