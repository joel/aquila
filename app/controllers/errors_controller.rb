class ErrorsController < ApplicationController
  skip_before_filter :authenticate_user!
  skip_around_filter :scope_current_vault

  def show
    @exception = env["action_dispatch.exception"]
    respond_to do |format|
      format.html { render action: request.path[1..-1] }
      format.json { render json: {status: request.path[1..-1], error: @exception.message} }
    end
  end
end