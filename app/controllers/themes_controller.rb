class ThemesController < ApplicationController
  skip_before_filter :authenticate_user!
  skip_around_filter :scope_current_vault

   def setting
     session[:theme] = params[:theme]
     redirect_to :back
   end

end