class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname])
  end

  private
  def after_update_path_for(resource)
    editpage_users_path
  end

  def after_sign_up_path_for(resource)
    createpage_users_path
  end

end
