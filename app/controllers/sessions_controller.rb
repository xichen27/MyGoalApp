class SessionsController < ApplicationController
  
  def new
    @user = User.new
    render :new
  end
  
  def create  
    @user = User.find_by_credentials(params[:user][:user_name], 
                                     params[:user][:password])
    if @user
      log_in(@user)
      redirect_to user_url(@user)
    else
      flash.now[:errors] = ["Invalid username or password"]
      @user = User.new :user_name => params[:user][:user_name]
      render :new
    end
  end
  
  def destroy
    log_out
    redirect_to new_session_url
  end
end
