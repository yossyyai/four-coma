Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:edit, :update]
  root "rooms#index"
  resources :rooms, only: [:index, :new, :create]
end
