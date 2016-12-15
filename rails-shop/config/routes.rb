Rails.application.routes.draw do
  root to: 'products#index'

  namespace :admin do
    root to: 'products#index'
    resources :products
  end

  resources :products, only: [:index]
end
