Rails.application.routes.draw do
  resources :playoff_brackets
  resources :players
  resources :games
  resources :teams
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
