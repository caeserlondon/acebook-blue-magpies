Rails.application.routes.draw do
  root "user#index"

  # get 'user/index' # commeting out but we might not need this
  get "/user", to: "user#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts
end