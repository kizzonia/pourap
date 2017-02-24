class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def index
    @homes = Home.all.order("created_at DESC")
  end
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:blogger) << :thumbnail
  end
end
