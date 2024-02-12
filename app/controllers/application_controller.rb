class ApplicationController < ActionController::Base
    before_action :i18n_setup

    protected
  
    def i18n_setup
      I18n.locale = 'es'
    end
end
def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  devise_parameter_sanitizer.permit(:account_update, keys: [:name])
end
