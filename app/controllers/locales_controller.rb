class LocalesController < ApplicationController
  skip_before_filter :authenticate_user!
  skip_around_filter :scope_current_vault

   def setting
     session[:locale] = params[:locale]
     I18n.locale = params[:locale]
     current_user.update locale: params[:locale] if current_user
     redirect_to :back
   end

end