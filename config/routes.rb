Rails.application.routes.draw do
  
  root 'pictures#index'
  resources :pictures, except: [:delete, :destroy, :new]
  resources :users, except: [:delete, :destroy, :new] 
  resources :tags, except: [:delete, :destroy, :show, :index]
  resources :tags, only: [:show, :index]
  
  get '/signup', to: 'users#new'

  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'


end
