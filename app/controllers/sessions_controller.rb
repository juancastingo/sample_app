class SessionsController < ApplicationController
  before_action :not_logged_in_user, only: [:new]

  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      log_in @user
      params[:session][:remember_me] == '1' ? remember(@user) : forget(@user)
      redirect_back_or @user
    else
      flash.now[:warning] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end  
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end


  private
  def not_logged_in_user
      if logged_in?
        flash[:warning] = "Can't access login page while logged in..."
        redirect_to root_url
      end
    end

end
