class PagesController < ApplicationController
  skip_before_filter :authenticate_user!
  skip_around_filter :scope_current_vault

  def cyborg
    session[:theme] = 'cyborg'
    render :index
  end

  def readable
    session[:theme] = 'readable'
    render :index
  end

  def cosmo
    session[:theme] = 'cosmo'
    render :index
  end

  def flatly
    session[:theme] = 'flatly'
    render :index
  end

  def simplex
    session[:theme] = 'simplex'
    render :index
  end

end