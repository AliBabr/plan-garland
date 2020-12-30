class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    params[:user][:role] = 0 if params[:controller] == 'registrations' and params[:action] == 'create'
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :username, :company_name, :country, :address, :phone_number, :role])
  end

end
