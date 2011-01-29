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
    @user = User.new
    @title = "New User Sign up"
  end
  
  
  
  
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      @title = "Sign up"
      render 'new'
    end
  end
  
  
  
  
end
