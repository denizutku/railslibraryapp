Rails.application.routes.draw do
  devise_for :users
  resources :books
  resources :authors
  resources :categories

  root to: "books#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
