Rails.application.routes.draw do
  root "users#index"

  get 'users/index'
  get "/users", to: "users#index"
  get "/sign_up", to: "users#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, :posts
end