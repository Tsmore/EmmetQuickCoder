class Public::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
end
