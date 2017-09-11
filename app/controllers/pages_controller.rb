class PagesController < ApplicationController

  def home
  	@username = "Tintin"
  	@products = ["Journal", "Appareil photo"]
  end

  def about
  end

  def contact
  end

end
