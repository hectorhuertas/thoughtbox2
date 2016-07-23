Rails.application.routes.draw do
  root to: 'pages#home'

  get 'login', to: 'sessions#new'
  get 'signup', to: 'users#new'

  resources :users, only:[:index, :create]
end
