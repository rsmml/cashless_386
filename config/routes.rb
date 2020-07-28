Rails.application.routes.draw do
  devise_for :users

  resources :user, only: :show do
    resources :cards, only: :index
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :vendors, only: %i[index new create edit update destroy show] do
    resources :reviews, only: %i[index new create]
    resources :bills, only: %i[new create]
  end

  resources :bills, only: %i[ show edit update] do
    resources :payments, only: :new
    resource :qrcode, only: [:show], module: 'bills'
  end
end
