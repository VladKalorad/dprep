Rails.application.routes.draw do
  get 'cart', to: 'cart#show'
  post 'cart/add'
  post 'cart/remove'
  post 'search', to: 'search#index'
  resources :products
  resources :payments
  resources :types
  resources :categories
  resources :user
  devise_for :users, controllers: { registrations: 'users/registrations' }
  get 'home/index'
  root to: 'home#index'
end
