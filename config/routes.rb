Rails.application.routes.draw do
  root "user#index"

  get 'user/index'
  get "/user", to: "user#index"
  get "/sign_up", to: "user#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, :posts
end