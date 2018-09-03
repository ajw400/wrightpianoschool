class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_signup_from_params

  def set_signup_from_params
    @signup = true if params[:signup] == "true"
  end
end
