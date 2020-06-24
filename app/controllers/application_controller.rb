class ApplicationController < ActionController::Base
    layout "main"

    protected
    def after_database_authentication
        redirect_to connections_path
    end
      
end
