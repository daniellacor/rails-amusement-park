Rails.application.routes.draw do

  get 'sessions/new'

  get 'sessions/create'

  namespace :admin do
    resources :users
    resources :attractions
  end


  resources :users
  resources :attractions

  root 'users#index'
  get '/', to: 'users#index'

  get 'sign-in', to: "sessions#new"
  post 'sign-in', to: "sessions#create"

end
