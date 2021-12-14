Rails.application.routes.draw do
  root "sessions#login"

  # get 'users/index'
  # get "/users", to: "users#index"
  # get "/sign_up", to: "users#new"
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]
  # resources :posts, only: [:new, :create, :edit, :update, :show, :destroy]

  get '/login', to: 'sessions#login'
  post '/login', to:'sessions#create'
  get '/users', to: 'users#show'
  post '/logout', to: 'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'
  post '/posts/:id/edit', to: 'posts#edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts do
    resources :comments
    resources :likes
    
  end
end