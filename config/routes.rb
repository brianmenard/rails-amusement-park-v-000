Rails.application.routes.draw do

#devise_for :users
root to: 'application#index'
resources :attractions
resources :users
resources :sessions, only: [:create]
delete '/session', to: 'sessions#destroy'
get '/signin', to: 'users#signin'
post 'users/login', to: 'sessions#create'
post '/rides/new', to: 'rides#new'

end
