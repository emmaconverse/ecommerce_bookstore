Rails.application.routes.draw do
resources :adminbooks
resources :books, only: [:index, :show]
resources :authors, only: [:index, :show]
resources :home, only: [:index]
resources :sales
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root to: "home#index"
end
