class HomeController < ApplicationController
  skip_before_filter :authenticate_user!
  skip_around_filter :scope_current_vault

  def index
    respond_to do |format|
      format.html { render :index }
      format.json { sleep(1); render json: { application: 'aquila' }}
    end
  end

end