Rails.application.routes.draw do
  #get 'recipe1', to: 'recipe1#index', as: 'recipe1'
  #get 'recipe1/:id', to: 'recipe1#show', as: 'recipe1'

  #get 'protein', to: 'home#protein', as: 'protein'
  root "home#index"

  put 'protein', to: 'home#input_protein', as: 'input_protein'

  put 'veg', to: 'home#input_veg', as: 'input_veg'

  #post 'veg', to: 'home#input_veg', as: 'input_veg'

  post 'aromatics', to: 'home#input_aromatics', as: 'input_aromatics'

  post 'oils', to: 'home#input_oils', as: 'input_oils'

  post 'starch', to: 'home#input_starch', as: 'input_starch'

  get 'index', to: 'home#index', as: 'index'

  get 'protein', to: 'home#protein', as: 'protein'

  get 'veg', to: 'home#veg', as: 'veg'

  get 'aromatics', to: 'home#aromatics', as: 'aromatics'

  get 'oils', to: 'home#oils', as: 'oils'

  get 'starch', to: 'home#starch', as: 'starch'

  get 'results', to: 'home#results', as: 'results'

  #get 'input/:action' to 'input#show'
  get "/home", to: "home#index"
  get "/home/:id", to: "home#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
