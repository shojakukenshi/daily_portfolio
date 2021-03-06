Rails.application.routes.draw do
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  namespace :login do
    resources :posts
    resource :profile, only: [:show, :create, :edit, :update]
  end
  resources :posts, only: [:index, :show]
end
