class ApplicationController < ActionController::Base
    include SessionsHelper
    
    private
    
    def require_user_logged_in
        unless logged_in?
            # falseの時に処理を実行
            redirect_to login_url
        end 
    end 
end
