class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    protect_from_forgery with: :exception
  
    def configure_permitted_parameters	
        #:display_name = :first_name + :last_name	# TEST
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :mobile_number])	
    end
end
