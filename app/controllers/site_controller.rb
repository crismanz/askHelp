class SiteController < ApplicationController
  def home
  end

  def map
  end

  def counter
    render :partial => "site/counter"
  end

end
