class Api::SessionsController < ApplicationController
  def create
    @user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )
    # debugger
    if @user
      login(@user)
      render 'api/users/show'
    else
      render @user.errors.full_messages, status: 422
    end
  end

  def destroy
    logout!
    render 'api/users/show'
  end
end