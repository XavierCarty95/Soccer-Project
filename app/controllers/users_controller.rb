class UsersController < ApplicationController

  skip_before_action :authorized, only: [:new , :create]
  def new
    @user = User.new
  end

  def create


    @user = User.create(user_params)

    if @user.valid? 
    session[:user_id] = @user.id

    redirect_to '/welcome' 

    else 
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
      
    end 
  end


  private 

  def user_params 
    params.require(:user).permit(:username, :password)

  end 
end
