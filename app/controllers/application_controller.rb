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
end
