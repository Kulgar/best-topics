class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    def website_title
      "BestTopics"
    end
    helper_method :website_title

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname])

      devise_parameter_sanitizer.permit(:account_update, keys: [:firstname, :lastname, :birthday,
        profile_attributes: [:description, :country, :title, :website],
        avatar_attributes: [:file, :name]])
    end
end
