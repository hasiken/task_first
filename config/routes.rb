Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "tasks#index"
  resources :tasks
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'signup', to: 'users#new'
  delete "logout", to: "users#destroy"
  resources :users, only: [:index, :show, :create]
end
