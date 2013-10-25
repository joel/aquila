class PagesController < ApplicationController
  skip_before_filter :authenticate_user!
  skip_around_filter :scope_current_vault

  before_filter :theme_names

  def cyborg
    render :index
  end

  def readable
    render :index
  end

  private

  def theme_names
    @themes ||= %w[cyborg readable]
  end

end