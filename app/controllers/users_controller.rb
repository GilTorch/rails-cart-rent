class UsersController < ApplicationController 
    def new 
        @user=User.new
    end

    def show 
        @user=User.find_by(id:params[:id])
        if !@user 
           redirect_to "/" 
        end
    end


    def create  
        @user=User.create(user_params)
        if @user
            session[:user_id]=@user.id 
            redirect_to user_path(@user)
        else 
            redirect_to new_user_path
        end
    end
    
 

    def user_params 
        params.require(:user).permit(:username,:email,:password,:password_confirmation,:admin)
    end
end