class GownsController < ApplicationController

    def index
        @gowns = Gown.all 
    end 

    def show 
        @gown = Gown.find(params[:id])
    end 

    def new
        @gown = Gown.new
    end 

    def create
        @gown = Gown.new(gown_params)

        if @gown.save 
            redirect_to gowns_path 
        else
            render :new 
        end 
    end 

    def edit
        @gown = Gown.find(params[:id])
    end

    def update
        @gown = Gown.find(params[:id])

        if @gown.update_attributes(gown_params)
            redirect_to gowns_path 
        else
            render :edit
        end 
    end 

    def destroy
        gown = Gown.find(params[:id])
        gown.delete 
        redirect_to gowns_path
    end

private 

    def gown_params 
        params.require(:gown).permit(:title, :colour, :size, :availability, :url)
    end 
end
