Rails.application.routes.draw do
  # devise_for :users
  resources :books
  resources :authors
  resources :categories

  root to: "books#index"

  get 'books/:id/lend', to: "books#lend", as: :lend_book
  get 'books/:id/return', to: "books#return", as: :return_book

  devise_for :users, skip: [:sessions, :registrations, :passwords]

  devise_scope :user do
    # sessions
    get    'login',  to: 'devise/sessions#new',     as: :new_user_session
    post   'login',  to: 'devise/sessions#create',  as: :user_session
    delete 'logout', to: 'devise/sessions#destroy', as: :destroy_user_session
    # registrations
    put    '/account',  to: 'devise/registrations#update'
    delete '/account',  to: 'devise/registrations#destroy'
    post   '/account',  to: 'devise/registrations#create'
    get    '/register', to: 'devise/registrations#new',    as: :new_user_registration
    get    '/account',  to: 'devise/registrations#edit',   as: :edit_user_registration
    patch  '/account',  to: 'devise/registrations#update', as: :user_registration
    get    '/account/cancel', to: 'devise/registrations#cancel', as: :cancel_user_registration# passwords 
    # passwords
    get   'new-pass',  to: 'devise/passwords#new',    as: :new_user_password
    get   'edit-pass', to: 'devise/passwords#edit',   as: :edit_user_password
    patch 'edit-pass', to: 'devise/passwords#update', as: :user_password
    post  'new-pass',  to: 'devise/passwords#create', as: :user_passwordx
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
