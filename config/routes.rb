Rails.application.routes.draw do
  root "dashboard#index"

  get "dashboard", to: "dashboard#index"

  resources :registration, only: [ :new, :create ]

  resources :members, only: [ :index ]


  # Admin namespace
  namespace :admin do
    get    "login",    to: "sessions#new",     as: :login
    post   "login",    to: "sessions#create"
    delete "logout",   to: "sessions#destroy", as: :logout
    get    "dashboard", to: "dashboard#index", as: :dashboard

    resources :registrations, only: [] do
      member do
        patch :approve
        patch :reject
      end
    end

    resources :activities
  end

  # Public members page
  resources :members, only: [ :index ]
end
