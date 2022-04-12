Rails.application.routes.draw do
  #get 'protein', to: 'home#protein', as: 'protein'
  root "home#index"

  post 'protein', to: 'home#input_protein', as: 'input_protein'

  post 'veg', to: 'home#input_veg', as: 'input_veg'

  post 'aromatics', to: 'home#input_aromatics', as: 'input_aromatics'

  post 'oils', to: 'home#input_oils', as: 'input_oils'

  get 'index', to: 'home#index', as: 'index'

  get 'protein', to: 'home#protein', as: 'protein'

  get 'veg', to: 'home#veg', as: 'veg'

  get 'aromatics', to: 'home#aromatics', as: 'aromatics'

  get 'oils', to: 'home#oils', as: 'oils'

  #get 'input/:action' to 'input#show'
  get "/home", to: "home#index"
  get "/home/:id", to: "home#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
