Rails.application.routes.draw do
  get 'sessions/new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  root "users#home"
  get 'signup'  => 'users#new'
  resources :users
  resources :account_activations, only: [:edit]
end