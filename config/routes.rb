Rails.application.routes.draw do
  resources :appearances, only: [:create]
  resources :accounts, only: [:show, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show, :update]
  resources :episodes, only: [:index, :show]
  resources :sessions, only: [:new]
end
