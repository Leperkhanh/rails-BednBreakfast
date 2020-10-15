Rails.application.routes.draw do
  get 'listings/index'
  get 'listings/show'
  get 'listings/new'
  get 'listings/create'
  get 'listings/edit'
  get 'listings/destroy'
  get 'category/index'
  get 'category/show'
  get 'category/new'
  get 'category/create'
  root to: 'static#home'
  get 'static/home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
