class SessionsController < ApplicationController

    def create
        @user = User.find_by(email: params[:email])

         if !!@user && @user.authenticate(params[:password])

            session[:user_id] = @user.id
            redirect_to users_path
        else

            message = "Something went wrong! Make sure your username and password are correct"
            redirect_to login_path, notice: message
        end
    end
end