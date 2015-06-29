Rails.application.routes.draw do
  resources :items
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'visitors#index'
  devise_for :users
  resources :items
  resources :cart
  patch '/cart', to: 'cart#update', as: 'update_cart'
end
