class ToppagesController < ApplicationController
  def index
    if logged_in?
      @micropost = current_user.microposts.build
      # 新規投稿用 form_with用
      @microposts = current_user.feed_microposts.order(id: :desc).page(params[:page])
    end 
  end
end
