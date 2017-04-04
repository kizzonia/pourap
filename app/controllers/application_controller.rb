class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :layout_by_resource
  before_action :login_from_session
  #before_action :configure_permitted_parameters, if: :devise_controller?


  def logged_in?
    !!current_user
  end

  def current_user
    @current_user
  end

  def login_as(user)
    @current_user = user
    session[:current_user_id] = user.try(:id)
  end

  def login_from_session
    @current_user = User.find_by_id(session[:current_user_id])
  end
  def destroy
session[:user_id] = nil
redirect_to root_url, notice: "Logged out!"
end
  private
  def current_user
   @current_user ||= User.find(session[:user_id]) if session[:user_id]
   end
   helper_method :current_user

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end

  def destroy
session[:user_id] = nil
redirect_to root_url, notice: "Logged out!"
end
  protected

  #def configure_permitted_parameters
  #devise_parameter_sanitizer.for(:sign_up) { |u| u.permit( :email, :password, :password_confirmation, :thumbnail) }
#  end
end
