Rails.application.routes.draw do
  resources :bookings
  get 'category/index'
  get 'category/show'
  get 'category/new'
  get 'category/create'
  root to: 'static#home'
  get 'static/home'
  devise_for :users
  resources :users, only: [:index, :show] 
  resources :listings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
