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
        respond_to do |format|
            format.html
            format.js
        end
    end 
    
    def create
        if !params[:favourite_list][:id].blank?
            p "................................"
            @fav = FavouriteList.find(params[:favourite_list][:id])
            @fav.gowns << Gown.find(params[:favourite_list][:gown_id].to_i)
        else
            @fav = FavouriteList.new(name: params[:favourite_list][:name])
            #@fav.user = current_user
            @fav.user_id  = params[:user_id]
            if @fav.save
                @fav.gowns << Gown.find(params[:favourite_list][:gown_id].to_i)
            end
    
        end
        redirect_to gowns_url
    end

    def edit
    end 

    def update
    end 

    def destroy
    end 

end
