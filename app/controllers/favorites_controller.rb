class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  def create
    post = Micropost.find(params[:micropost_id])
    current_user.register(post)
    flash[:success] = "ツイートをお気に入りに登録しました。"
    redirect_to likes_user_url(current_user)
  end

  def destroy
    post = Micropost.find(params[:micropost_id])
    current_user.unregister(post)
    flash[:success] = "お気に入り登録を解除しました。"
    redirect_to likes_user_url(current_user)
  end
end
