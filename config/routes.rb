Rails.application.routes.draw do
get 'styleguide', to: "styleguides#styleguide"
devise_for :users
root to: "books#index"

resources :books, only: :show do
    resources :sales, only: [:new, :create]
    end
get "/sales", to: "sales#index"

resources :authors, only: [:index, :show]

resources :home, only: [:index]

namespace :admin do
  root 'admin#books#index'
  resources :books, :authors

end
end


# find or create by
# quickstart and creating charges
