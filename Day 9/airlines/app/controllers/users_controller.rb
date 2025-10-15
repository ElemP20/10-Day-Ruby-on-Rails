class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Account created and logged in!"
      redirect_to root_path
    else
      flash.now[:alert] = "Error creating account. Please check the form."
      render :new, status: :unprocessable_entity
    end
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :role) 
    end
end
