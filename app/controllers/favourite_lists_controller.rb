class FavouriteListsController < ApplicationController
# only if user == user that created it, could access show, edit/update, and destroy
# only a signed in user can access new and create
# admin can access all ???

    def index
        @flists = FavouriteList.all 
    end 

    def show
        @flist = FavouriteList.find(params[:id])
    end 

    def new 
    end 
    
    def create
    end

    def edit
    end 

    def update
    end 

    def destroy
    end 

end
