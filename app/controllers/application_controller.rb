class ApplicationController < ActionController::Base
  before_action :basic_auth, if: :production?
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  
    before_action :set_parents

  private

  def production?
    Rails.env.production?
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :last_name, :first_name, :j_last_name, :j_first_name, :birthday, :phone_number])
  end

  def set_parents
    @parents = Category.where(ancestry: nil)
  end

end
