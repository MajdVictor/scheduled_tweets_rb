class RegistrationController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        puts user_params
        if @user.save
            puts "here in save block "
            redirect_to root_path, notice: "Successfully created account"
        else
            puts "not working"
            render :new, status: :unprocessable_entity
            # redirect_to sign_up_path, alert: "Something went wrong! try again"
        end
        # render plain: params[:user]
        #render plain: params[:user][:email]
    end

    ##helper methods
    private def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)

    end
end