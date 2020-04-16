class ContractsController < ApplicationController
  
  def new

    @contract = Contract.new 
  end

  def create 
     @contract = Contract.create(contract_params)

     if @contract.valid? 
     redirect_to team_path(@contract.team_id)

     else 
      flash[:errors] = @contract.errors.full_messages
      redirect_to new_contract_path
     end
  end 
  

 
private 

  def contract_params 
  
    params.require(:contract).permit(:length , :team_id , :player_id )

  end 
end
