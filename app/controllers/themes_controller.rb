class ThemesController < ApplicationController

   def setting
     session[:theme] = params[:theme]
     redirect_to :back
   end

end