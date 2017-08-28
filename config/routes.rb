Rails.application.routes.draw do

  resources :cargas
  resources :users
  get 'client/index', to: 'client#client_index'

  get 'admin/index', to: 'admin#admin_index'

  get 'signin/index'

  post 'login', to: 'signin#login'

  root 'home#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
