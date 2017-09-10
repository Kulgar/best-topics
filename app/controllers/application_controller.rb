class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

    def website_title
      "BestTopics"
    end
    helper_method :website_title

end
