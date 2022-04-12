Rails.application.routes.draw do
  #get 'protein', to: 'home#protein', as: 'protein'
  root "home#index"
  post 'protein', to: 'home#input_protein', as: 'input_protein'
  get 'index', to: 'home#index', as: 'index'
  get 'protein', to: 'home#protein', as: 'protein'
  #get 'input/:action' to 'input#show'
  get "/home", to: "home#index"
  get "/home/:id", to: "home#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
