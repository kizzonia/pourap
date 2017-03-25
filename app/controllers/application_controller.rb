class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?
  layout :layout_by_resource

  private

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:blogger) << :thumbnail
  end
end
