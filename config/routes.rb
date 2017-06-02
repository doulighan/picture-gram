Rails.application.routes.draw do
  
  root 'pictures#index'
  resources :pictures, except: [:delete, :destroy, :new]
  resources :users, except: [:delete, :destroy, :new] 
  resources :comments, only: [:create]
  resources :tags, only: [:show, :index, :create]

  post '/tag/search', to: 'tags#search', as: 'search'
  
  get '/signup', to: 'users#new'

  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'


end
