class SessionsController < ApplicationController

    skip_before_action :authorization, only: [:new, :create]

    def logout 
        session.delete(:user_id)
        redirect_to users_path
    end 

    def new
    end 

    def create 
        user = User.find_by(user_name: params[:session][:user_name])
     
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        # elsif user.invalid?
        #     falsh[:error] = "User does not exist"
        #     redirect_to new_login_path
        else
            flash[:error] = "Username or Password was Incorrect"
            redirect_to new_login_path
        end 
    end
end