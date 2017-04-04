class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #before_action :configure_permitted_parameters, if: :devise_controller?
  layout :layout_by_resource
  before_action :login_from_session

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
  private

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end
  protected

  #def configure_permitted_parameters
  #devise_parameter_sanitizer.for(:sign_up) { |u| u.permit( :email, :password, :password_confirmation, :thumbnail) }
#  end
end
