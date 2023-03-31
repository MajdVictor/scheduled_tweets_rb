class MainController < ApplicationController

    def index
        #testing flash messages
        # flash[:notice] = "Logged in successfully"
        # flash[:alert] = "Invalid email or account"

        #or we can use flash.alert = "",  because it is a hash
        
        #checking session
        #cookies are sent in the header back and forth in every request 
        if session[:user_id]
            @user = User.find_by(id: session[:user_id]) #if user is deleted from the DB, the application wil not crashg using the find_by, but if we use find, it will throw an error
        end
    end
end