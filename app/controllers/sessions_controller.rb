class SessionsController < ApplicationController
  

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Logged In!"
      redirect_to user_path(user)
    else
      flash[:warning] = "Login Failed!"
      redirect_to root_path
    end
  end

    def destroy
      session[:user_id] = nil
      flash[:success] = "Logged Out!"
      redirect_to root_path
    end
end