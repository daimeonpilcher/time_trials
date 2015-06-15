Rails.application.routes.draw do

  root to: 'sites#index', as: 'home'

  get 'users', to: 'users#show'

  get '/signup', to: 'users#new'

  post '/users', to: 'users#create'


end
