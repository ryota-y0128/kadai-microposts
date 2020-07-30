Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: "toppages#index"
    # トップページの設定
    
    get "login", to: "sessions#new"
    post "login", to: "sessions#create"
    delete 'logout', to: 'sessions#destroy'
    # ログイン用。sessuibはセッション管理用のコントローラ
    
    get "signup", to: "users#new"
    # ユーザの新規登録URLを (/users/new に加えて) /signup でも可能にするために書き加える
    resources :users, only: [:index, :show, :new, :create] do
    member do
      get :followings
      get :followers
      get :likes
    end
  end 
    resources :microposts, only: [:create, :destroy]
    resources :relationships, only: [:create, :destroy]
    resources :favorites, only:[:create, :destroy]
end
