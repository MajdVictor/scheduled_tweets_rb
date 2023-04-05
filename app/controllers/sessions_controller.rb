# require 'pry'
class SessionsController < ApplicationController

    def destroy
        session[:user_id] = nil 
        binding.pry
        redirect_to root_path, notice: "Logged out!"
    end
end