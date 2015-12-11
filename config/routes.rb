Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  get 'users/show'

  resources :users, only: [:show]

  root to: "home#index"
end
