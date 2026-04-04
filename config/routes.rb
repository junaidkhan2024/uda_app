Rails.application.routes.draw do
  root "dashboard#index"

  resource  :dashboard, only: [ :index ]
  get       "dashboard", to: "dashboard#index"

  resources :registrations, only: [ :new, :create ]
end
