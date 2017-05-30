class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = get_user
  end


  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "User created!"
      redirect_to user_path(@user)
    else
      flash[:warning] = "User not created!"
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :password)
  end

  def get_user
    @user = User.find(params[:id]) 
  end


end
