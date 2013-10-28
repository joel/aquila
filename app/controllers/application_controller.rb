class ApplicationController < ActionController::Base
  include UrlHelper
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :authenticate_user!
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:username, :email, :password, :password_confirmation, vault_attributes: [:subdomain])
    end
  end

  def themes
    @themes ||= %w[cyborg readable]
  end
  helper_method :themes

  def current_theme
    session[:theme] ||= 'cyborg'
  end
  helper_method :current_theme

  around_filter :scope_current_vault, except: [:authenticate_user!] # if user_signed_in?

  private

  def after_sign_up_path_for resource
    goldbricks_url(subdomain: resource.vault.subdomain)
  end

  def after_sign_in_path_for resource
    goldbricks_url(subdomain: resource.vault.subdomain)
  end

  def current_vault
    return nil unless user_signed_in?
    current_user.vault.tap do |vault|
      raise('no vault found') if vault.nil?
      raise('bad vault') if current_user.vault.subdomain != request.subdomain
    end
  end
  helper_method :current_vault

  def scope_current_vault
    Vault.current_id = current_vault.try :id
    yield
  ensure
    Vault.current_id = nil
  end

end
