class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
<<<<<<< HEAD
      flash[:notice] = "Welcome to the Alpha Blog, you have successfully signed up"
=======
      flash[:notice] = "Welcome to the Alpha Blog #{@user.username}, you have successfully signed up"
>>>>>>> users-signup
      redirect_to articles_path
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :email)
  end

end
