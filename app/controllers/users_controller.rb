class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def show
    @user = User.find(params[:id])
    #debugger
    @parametros = params
  end

 
  def create
    @user = User.new(user_params)    # Not the final implementation!
    Rails.logger.debug "\033[1;34;40m[DEBUG] Juanca-DEBUG: \033[0m " + @user.to_s
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user # igual a redirect_to user_url(@user)
    else
      render 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
