class ApplicationController < ActionController::Base
    layout "main"

    protected
    def after_sign_in_path_for(resource)
        stored_location_for(resource) || connections_path
      end
      
end
