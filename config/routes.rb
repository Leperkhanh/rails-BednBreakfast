Rails.application.routes.draw do
  resources :bookings
  root to: 'static#home'
  get 'static/home'
  get 'static/signin'
  get 'static/signup'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks',
    :sessions => "sessions"
  }
  devise_for :guests
  resources :users, only: [:index, :show] 
  resources :guests, only: [:index, :show] 
  resources :listings
  resources :category
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
