Rails.application.routes.draw do
  
  root 'pictures#index'
  resources :pictures
  resources :users, except: [:delete, :destroy, :new]
  
  get '/signup', to: 'users#new'

  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'


end
