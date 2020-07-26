module SessionsHelper
    def current_user
        @current_user ||=User.find_by(id: session[:user_id])
    end 
    # @current_userに、既に現在のログインユーザが代入されていたら何もせず、
    # 代入されていなかったらUser.find(...)からログインユーザを取得し、代入する処理
    
    def logged_in?
        !!current_user
        # !はnot演算子
        # ユーザがログインしていればtrue, していなければfalse
    end 
end
