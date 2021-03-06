Rails.application.routes.draw do
  resources :subscribers
  resources :posts do
    resources :comments, only: [:create]
  end
  devise_for :users
  resources :friends
  root 'home#index'
  get 'home/about'
  get 'friends/list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
