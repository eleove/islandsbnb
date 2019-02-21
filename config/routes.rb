Rails.application.routes.draw do
  get 'bookings/create'
  devise_for :users
  root to: 'pages#home'

  resources :users
  resources :islands do
    resources :bookings, only: :create
    resources :reviews, only: [ :new, :create ]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
