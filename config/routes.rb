Rails.application.routes.draw do

  namespace :admin do
    resources :users
    resources :attractions
  end

  resources :users
  resources :attractions

  root 'users#index'

  get 'sign-in', to: "sessions#new"
  post 'sign-in', to: "sessions#create"

end
