Rails.application.routes.draw do
  root "home#index"
  get 'home/index'
  get "home/about"
  
  devise_for :users
  resources :comrades
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
