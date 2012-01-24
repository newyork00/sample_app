class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
#    @title = @user.name
  end

  def new
    @user = User.new
  end

  def create
#    raise params[:user].inspect
    @user = User.new(params[:user])
    if @user.save
#      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user, flash: { success: "Welcome to the Sample App!" }
      # Handle a successful save.
    else
      render 'new'
    end
  end

end
