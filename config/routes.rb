Rails.application.routes.draw do
  resources :products
  resources :types
  resources :categories
  resources :user
  devise_for :users, controllers: { registrations: 'users/registrations' }
  get 'home/index'
  root to: 'home#index'
end
