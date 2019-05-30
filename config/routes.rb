Rails.application.routes.draw do

  get '/error', to: 'errors#not_found'


  # get 'errors/internal_server_error'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :posts


  root 'sessions#new'
end
