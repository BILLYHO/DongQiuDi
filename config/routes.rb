Rails.application.routes.draw do


  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get    'weibo'  => 'sessions#weibo'
  get    'github' => 'sessions#github'

  resources :users
  get 'signup' => 'users#new'

  resources :topics
  resources :members

  root 'static_pages#home'
  get 'about' => 'static_pages#about'

  resources :wechat
  resources :wechatmenu

end
