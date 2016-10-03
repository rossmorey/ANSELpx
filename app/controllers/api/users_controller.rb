class Api::UsersController < ApplicationController

  # This method returns a random 5 users
  def index
    users = User.all - [current_user]
    @users = users.shuffle.take(5)
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login(@user)
      render 'api/users/show'
    else
      render json: @user.errors.to_hash, status: 422
    end
  end

  def show
    @user = User.find(params["id"])
    if @user
      render 'api/users/show'
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :first_name, :last_name)
  end
end
