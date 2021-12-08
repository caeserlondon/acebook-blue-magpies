Rails.application.routes.draw do
  root "user#index"

  get 'user/index'
  get "/user", to: "user#index"
  get "/sign_up", to: "user#sign_up"
  # get "/posts"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users
  resources :posts do
    resources :comments
  end
end