Rails.application.routes.draw do
get 'styleguide', to: "styleguides#styleguide"
get 'home/index'
# resources :adminbooks
resources :books, only: [:index, :show]
resources :authors, only: [:index, :show]
resources :home, only: [:index]
resources :sales
namespace :admin do
  # not actually sure what root does?
  root 'books#index'
  resources :books, :authors
end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root to: "books#index"
end
