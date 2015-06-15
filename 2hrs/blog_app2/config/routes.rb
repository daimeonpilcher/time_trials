Rails.application.routes.draw do

  root to: 'sites#index', as: 'home'

  get '/signup', to: 'users#new', as 'signup'


end
