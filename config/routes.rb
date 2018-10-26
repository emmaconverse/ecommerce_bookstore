require "sidekiq/web"

Rails.application.routes.draw do
  get 'styleguide', to: "styleguides#styleguide"
  devise_for :users
  root to: "books#index"

  resources :books, only: :show do
      resources :sales, only: [:new, :create]
      end

  resources :sales, only: [:index, :show]

  resources :authors, only: [:index, :show]

  resources :home, only: [:index]

  namespace :admin do
    root 'admin#books#index'
    resources :books, :authors

    mount Sidekiq::Web => "/sidekiq"
  end

  namespace :author do
    root 'author#books#index'
    resources :books
  end
end


# find or create by
# quickstart and creating charges
