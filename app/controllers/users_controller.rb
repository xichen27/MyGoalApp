class UsersController < ApplicationController
  before_action :require_user, except: [:new, :create]
  def index
    @users = User.all
  end
  
  def new
   @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      redirect_to user_url(@user)
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end
  
  def show
    @user = User.find(params[:id])
    # fail
    render :show
  end
  
  private
  def user_params
    params.require(:user).permit(:user_name, :password)
  end
end
