class PagesController < ApplicationController

  def home
    set_title
  	@username = "Tintin"
  	@products = ["Journal", "Appareil photo"]
  end

  def about
    set_title
  end

  def contact
    set_title
  end

end
