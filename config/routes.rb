Rails.application.routes.draw do
  resources :books
  resources :authors
  resources :categories

  root to: "index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
