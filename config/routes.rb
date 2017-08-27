Rails.application.routes.draw do

  resources :users
  get 'client/index'

  get 'admin/index'

  get 'signin/index'

  post 'login', to: 'signin#login'

  root 'home#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
