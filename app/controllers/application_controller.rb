class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password, :remember_me, :government_approvedID, :government_approvedID_cache, :remove_government_approvedID)}
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email, :password, :remember_me)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :email, :password, :current_password, :remember_me)}
  end

  def after_sign_in_path_for(resource)
    requests_path
  end

  def after_sign_out_path_for(resource_or_scope)
    request.referrer
  end

end
