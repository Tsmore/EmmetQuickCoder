class ApplicationController < ActionController::Base
  before_action :set_devise_mapping

  private

  def set_devise_mapping
    @user = User.new
    @devise_mapping = Devise.mappings[:user]
    @resource_name = :user
  end
end
