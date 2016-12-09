class SessionsController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.find_by(email: session_params[:email])
    if @user && @user.is_password?(session_params[:password])
      log_in_user!(@user)
      # session[:session_token] = @user.reset_session_token!
      redirect_to user_url(@user)
    else
      # flash.now = @user.errors.full_messages
      render text: "something went wrong"
    end

  end

  def destroy
    log_out_user!
    redirect_to new_session_url
  end

  def session_params
    params.require(:user).permit(:email, :password)
  end

end
