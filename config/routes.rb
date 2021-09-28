Rails.application.routes.draw do
  get 'homes/top'
  get 'homes/about'
  resources :books
  resources :users,only: [:index, :show, :edit, :update]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
