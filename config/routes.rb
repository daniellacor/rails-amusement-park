Rails.application.routes.draw do

  namespace :admin do
    resources :users
    resources :attractions
  end

  resources :users
  resources :attractions

  root 'users#index'

end
