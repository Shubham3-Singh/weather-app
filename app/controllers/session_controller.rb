class SessionController < ApplicationController
  def new
  end

  def create
    @user = UserAuthenticate.find_by(email: params[:email])
    if @user && params[:password] == @user.password
      session[:user_id] = @user.id
      redirect_to weather_index_path

    else
      flash.now.alert = 'Invalid email or password'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged out'
  end

  def logout
    session[:user_id] = nil
    redirect_to login_path, notice: 'Logged out'
  end
end
