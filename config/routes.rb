Rails.application.routes.draw do
  get 'cards/new'
  get 'cards/create'
  get 'cards/update'
  get 'cards/edit'
  get 'cards/destroy'
  get 'cards/index'
  get 'cards/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
