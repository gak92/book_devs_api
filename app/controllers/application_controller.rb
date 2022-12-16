class ApplicationController < ActionController::API
  # before_filter :configure_permitted_parameters, if: :devise_controller?
  # before_action :authenticate_user!
  before_action :update_allowed_parameters, if: :devise_controller?

  # def update_allowed_parameters
  #   devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation) }
  #   devise_parameter_sanitizer.permit(:account_update) do |u|
  #     u.permit(:name, :email, :password, :current_password)
  #   end
  # end
end
