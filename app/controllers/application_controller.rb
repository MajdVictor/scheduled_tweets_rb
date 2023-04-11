class ApplicationController < ActionController::Base

    before_action :set_current_user #execute before any actions

    def set_current_user
        if session[:user_id]
            Current.user = User.find_by(id: session[:user_id]) #if user is deleted from the DB, the application wil not crashg using the find_by, but if we use find, it will throw an error
            
        end
    end
    
end
