class Public::HomesController < ApplicationController
  before_action :set_devise_mapping

  def top

  end

  private

  def set_devise_mapping
    @user = User.new
    @devise_mapping = Devise.mappings[:user]
    @resource_name = :user
  end
end
