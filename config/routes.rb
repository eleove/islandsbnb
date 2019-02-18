Rails.application.routes.draw do
  get 'islands/index'
  get 'islands/new'
  get 'islands/create'
  devise_for :users
  root to: 'pages#home'
  resources :users
  resources :islands, only: [:index, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
