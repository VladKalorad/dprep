Rails.application.routes.draw do
  get 'cart', to: 'cart#show'
  post 'cart/add'
  post 'cart/remove'
  resources :products
  resources :types
  resources :categories
  resources :user
  devise_for :users, controllers: { registrations: 'users/registrations' }
  get 'home/index'
  root to: 'home#index'
end
