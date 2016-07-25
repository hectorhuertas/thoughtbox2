Rails.application.routes.draw do
  root to: 'pages#home'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'signup', to: 'users#new'

  resources :users, only: [:create]
end
