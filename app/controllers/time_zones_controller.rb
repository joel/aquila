class TimeZonesController < ApplicationController
  skip_before_filter :authenticate_user!
  skip_around_filter :scope_current_vault

   def setting
     session[:time_zone] = params[:time_zone]
     Time.zone = params[:time_zone]
     current_user.update time_zone: params[:time_zone] if current_user
     redirect_to :back
   end

end