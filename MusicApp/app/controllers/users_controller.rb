class UsersController < ApplicationController

  def index
    @users = User.all
    render :index
  end

  def show
    @user = User.find_by(id: params[:id])
    render :show
  end

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      log_in_user!(@user)
      redirect_to user_url(@user)
    else
      #need error handling, use flash.now[:errors] = @user.errors.full_messages
    end
     #will need to change this render once i have a music db set up
  end

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
