Rails.application.routes.draw do
  mount Payola::Engine => '/payola', as: :payola
  resources :items, :only => [:index, :show]
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'visitors#index'
  resources :cart, :only => [:index, :update, :destroy]
  patch '/cart', to: 'cart#update', as: 'update_cart'
  patch '/cart_remove', to: 'cart#delete', as: 'remove_item'
end
