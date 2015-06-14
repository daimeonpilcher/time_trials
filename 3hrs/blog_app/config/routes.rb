Rails.application.routes.draw do
  root to: 'sites#index'

  get 'articles/index'

  get 'articles/new'

  post 'articles/create'

  get 'articles/show'

  get 'articles/edit'

  put 'articles/update'

  delete 'articles/destroy'

  get 'users/index'

  get 'users/new'

  post 'users/create'

  get 'users/show'

  get 'users/edit'

  put 'users/update'

  delete 'users/destroy'

  get 'sites/about'

  get 'sites/contact'

end
