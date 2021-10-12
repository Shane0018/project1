class SessionsController < ApplicationController
    def new
         
    end 

    def create
        submitted_email = params[:session][:email]
        submitted_password = params[:session][:password] 

        u = User.find_by(submitted_email)
        if u && u.authenticate(submitted_password)
            session[:user_id] = u.id 
            redirect_to gowns_path
        else 
            render :new
        end

    end 

    def destroy
        session[:user_id] = nil 
        redirect_to root_url
    end 
end
