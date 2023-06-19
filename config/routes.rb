Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :plants

  root "plants#index"

  put "plants/:id/increment", to: "plants#increment", as: 'increment_plant'

  put "plants/:id/decrement", to: "plants#decrement", as: 'decrement_plant'
  
end
