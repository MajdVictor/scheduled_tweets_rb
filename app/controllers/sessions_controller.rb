# require 'pry'
class SessionsController < ApplicationController

    def new

    end

    def create
        user = User.find_by(email: params[:email])
        # binding.pry
        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to root_path, notice: "Logged in sucessfully"
        else
            # binding.pry
            # flash[:alert] = "Invalid email or password"
            redirect_to sign_in_path, alert: "Invalid email or password"
        end
    end

    def destroy
        session[:user_id] = nil 
        # binding.pry
        redirect_to root_path, notice: "Logged out!"
    end
end