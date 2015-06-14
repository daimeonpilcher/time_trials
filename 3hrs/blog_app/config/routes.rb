Rails.application.routes.draw do
  get 'signup', to: 'users#new'

  get 'sites/index'

  get 'sites/about'

  get 'sites/contact'

  get 'sessions/new'

  get 'sessions/create'


end
