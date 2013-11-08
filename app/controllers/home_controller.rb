class HomeController < ApplicationController
  skip_before_filter :authenticate_user!
  skip_around_filter :scope_current_vault

  def index
    render :index
  end

end