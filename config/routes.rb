Rails.application.routes.draw do

  namespace :api do 
    namespace :v1 do
      resources :playoff_brackets
      resources :players
      resources :games
      resources :teams
      resources :users
      post "/login", to: "auth#login"
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
