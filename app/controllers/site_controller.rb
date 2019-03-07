class SiteController < ApplicationController
  def home
  end

  def map
  end

  def reload_counter
    render :partial => "layouts/counter"
  end

end
