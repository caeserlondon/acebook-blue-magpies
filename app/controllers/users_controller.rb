class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def show
    render :new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = "All fields required"
      redirect_to @user
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password) 
  end

end
