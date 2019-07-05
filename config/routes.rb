Rails.application.routes.draw do
  devise_for :users
  devise_for :installs
 	root 'places#index'
 	resources :places
 end

