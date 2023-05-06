Rails.application.routes.draw do
  resources :users
  resources :actives
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "actives#index"
end
