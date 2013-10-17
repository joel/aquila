class PagesController < ApplicationController

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