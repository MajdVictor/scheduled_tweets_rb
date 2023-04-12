class PasswordController < ApplicationController

    before_action :require_user_logged_in!

    def edit
    end

    def update
        if Current.user.update(password_params)
            redirect_to root_path, notice: "Password updated"
        else
            redirect_to edit_password_path, alert: "re-check password entry"
        end

    end

    private

    def password_params
        # binding.pry
        params.require(:user).permit(:password, :password_confirmation, :email )
    end
end