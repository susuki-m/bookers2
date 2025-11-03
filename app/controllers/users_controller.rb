class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:title, :body, :image)
  end

  def is_matching_login_user
    user = User.find(params[:id])
    unless user.id == current_user.id
      redirect_to root_path
    end
  end


end
