Rails.application.routes.draw do
  root to: 'pages#home'

  get  'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  get 'signup', to: 'users#new'

  resources :users, only: [:create]
  resources :thoughts, only: [:new, :create, :edit, :update, :destroy]
end
