Rails.application.routes.draw do
  #short form
  # resources :users 


  #long form
  get '/users', to: 'users#index'
  get '/users/new', to: 'users#new', as: 'new_users'
  get '/users/edit', to: 'users#edit', as: 'edit_users'
  get '/users/:id', to: 'users#show'
  patch '/users/:id', to: 'users#update'
  put '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'
  post '/users', to: 'users#create'

end
