class SessionsController < ApplicationController
  def new
    @user = User.new
    @users = User.all
  end

  def create
    name = params[:user][:name]
    @user = User.find_by(name: name)
    if @user.nil?
      render :new
    else
      session[:current_user_id] = @user.id
      redirect_to user_path(@user.id)
    end
  end

  def destroy
    session[:current_user_id] = nil
    redirect_to root_path
  end

  private

  def sign_in_params
    params.require(:user).permit(:name)
  end
end
