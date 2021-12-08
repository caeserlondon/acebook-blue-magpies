Rails.application.routes.draw do
  root "user#index"

  get 'user/index'
  get "/user", to: "user#index"
  get "/sign_up", to: "user#sign_up"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts
end