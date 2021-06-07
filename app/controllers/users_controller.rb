class UsersController < ApplicationController
# only once signed in should be able to access index, show, edit, update, and destroy

    def new 
        @user = User.new
    end 

    def create
        @user = User.new(user_params)

        if @user.save 
            redirect_to users_path 
        else
            render :new
        end
    end 

    def index
        @users = User.all 
    end 

    def show
        @user = User.find(params[:id])
    end 

    def edit
        @user = User.find(params[:id])
    end 

    def update
        @user = User.find(params[:id])

        if @user.save 
            redirect_to users_path
        else
            render :edit
        end 
    end 

    def destroy
        user = User.find(params[:id])
        user.delete 
        redirect_to users_path 
    end 

    private 

    def user_params
        params.require(:user).permit(:name, :email, :phone_number, :address, :password_digest, :admin)
    end 
end
