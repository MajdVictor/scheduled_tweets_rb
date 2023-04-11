class MainController < ApplicationController

    def index
        #testing flash messages
        # flash[:notice] = "Logged in successfully"
        # flash[:alert] = "Invalid email or account"

        #or we can use flash.alert = "",  because it is a hash
        
        #checking session
        #cookies are sent in the header back and forth in every request 
        
    end
end