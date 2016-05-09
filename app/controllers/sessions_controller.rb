class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find(params[:user][:id])
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:user][:id])
    @user.session.user_id.destroy
    redirect_to users_path
  end
end
