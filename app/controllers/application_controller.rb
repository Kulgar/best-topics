class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def home
  	@username = "Tintin"
  	@products = ["Journal", "Appareil photo"]
  end
end
