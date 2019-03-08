class SessionsController < ApplicationController 
    def new 
        @user=User.new
    end 

    def create 
        @user=User.find_by(username:params[:user][:username])
        puts @user.inspect
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id]=@user.id 
            redirect_to user_path(@user)
        else
            redirect_to home_path
        end

    end

    def destroy
        reset_session
        redirect_to "/users/new"
    end
end 
