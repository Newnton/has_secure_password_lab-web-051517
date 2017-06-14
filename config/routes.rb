Rails.application.routes.draw do
  get '/users', to: 'users#new'
  post '/users', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/home', to: 'users#home'
end
