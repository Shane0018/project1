class ApplicationController < ActionController::Base
    helper_method :currect_user

    private
    def currect_user
        user_id = session[:user_id]
        user_id && User.find(user_id)
    end 
end
