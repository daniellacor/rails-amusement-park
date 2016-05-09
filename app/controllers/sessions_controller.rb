class SessionsController < ApplicationController
  def new
  end

  def create
    binding.pry
    @user = User.find(id: params[:id])
    session[]
    # current_user = @user.id
  end
end
