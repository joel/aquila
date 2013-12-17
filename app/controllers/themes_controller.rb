class ThemesController < ApplicationController
  skip_before_filter :authenticate_user!
  skip_around_filter :scope_current_vault

   def setting
     session[:theme] = params[:theme]
     current_user.update theme: params[:theme] if current_user
     redirect_to :back
   end

end