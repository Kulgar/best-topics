class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def set_title
    @title = "BestTopics"
  end

end
