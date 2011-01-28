class UsersController < ApplicationController
  
  def show
    if :id? 
      @user = User.find(1)
     else
       @user = User.find(params[:id])
      end 

    @title = @user.name
  end


  def new
    @title = "Sign up"
  end
  
end
