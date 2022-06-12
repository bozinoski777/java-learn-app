# config/routes.rb
Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'dashboard', to: 'dashboard#show'
  # get "materials", to: "materials#index"
  resources :reportcards
  resources :mreports
  resources :freports
  resources :materials
  resources :flashcards

end