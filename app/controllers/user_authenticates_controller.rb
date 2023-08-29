class UserAuthenticatesController < ApplicationController
  
  def index
    @users = UserAuthenticate.all
  end

  def new
    @user = UserAuthenticate.new
  end

  def create
    @user = UserAuthenticate.new
    @user.email = params[:user_authenticate][:email]
    @user.password = params[:user_authenticate][:password]
    if @user.save
      session[:user_id] = @user.id
      redirect_to login_path, notice: 'Registration successful'
    else
      render :new
    end
  end
end