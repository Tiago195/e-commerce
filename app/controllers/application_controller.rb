class ApplicationController < ActionController::Base
  before_action :configure_permited_parameters, if: :devise_controller?

  protected

  def configure_permited_parameters 
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:name, :email, :password, :password_confirmation, :phone)
    end
  end
end
