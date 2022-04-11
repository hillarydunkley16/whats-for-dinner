Rails.application.routes.draw do
  root "home#index"
  get 'home/index'

  get "/home", to: "home#index"
  get "/home/:id", to: "home#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
