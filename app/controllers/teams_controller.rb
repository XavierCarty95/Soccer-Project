class TeamsController < ApplicationController
    def index
        @teams = Team.all
    end
  
    def show
        @team = Team.find(params[:id])
    end
  
    
    def new
        @team = Team.new
    end
  
   
    def create 

      @team = Team.create!(name: params[:name] , location: params[:location])


    end 
  
    
  
    def edit
    end
end