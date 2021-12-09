Rails.application.routes.draw do
  root "sessions#login"

  # get 'users/index'
  # get "/users", to: "users#index"
  # get "/sign_up", to: "users#new"
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  post '/logout', to: 'sessions#destroy'

  # get "/posts"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :posts do
    resources :comments
    resources :likes
  end
end