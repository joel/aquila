class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def themes
    @themes ||= %w[cyborg readable]
  end
  helper_method :themes

  def current_theme
    session[:theme] ||= 'cyborg'
  end
  helper_method :current_theme

  around_filter :scope_current_vault

private

  # def current_user
  #   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  # end
  # helper_method :current_user

  def current_vault
    Vault.where(subdomain: request.subdomain).first || raise('no vault found')
  end
  helper_method :current_vault

  def scope_current_vault
    Vault.current_id = current_vault.id
    yield
  ensure
    Vault.current_id = nil
  end

end
