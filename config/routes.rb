Rails.application.routes.draw do

  root to: "home#top"

  get '/about' => 'home#about'

  devise_for :users

  resources :users_posts, only: [:new, :destroy, :create, :update]
    get '/users_posts'  => 'users_posts#index'
    get '/users_posts/:id' => 'users_posts#show'
    get '/users_posts/:id/edit' => 'users_posts#edit'
    
  get '/admin' => 'admin/posts#index'
    namespace :admin do
      resources :posts
    end




end
