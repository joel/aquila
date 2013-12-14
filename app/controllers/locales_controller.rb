class LocalesController < ApplicationController
  skip_before_filter :authenticate_user!
  skip_around_filter :scope_current_vault

   def setting
     session[:locale] = params[:locale]
     I18n.locale = session[:locale]
     redirect_to :back
   end

end