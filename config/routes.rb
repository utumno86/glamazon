Rails.application.routes.draw do
  mount Payola::Engine => '/payola', as: :payola
  resources :items, :only => [:index, :show]
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'visitors#index'
  devise_for :users
  resources :cart, :only => [:index, :update, :destroy]
  patch '/cart', to: 'cart#update', as: 'update_cart'
end
