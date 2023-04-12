Rails.application.routes.draw do
  
  root to: "main#index"
  get "about", to: "about#index"

  get "sign_up", to: "registration#new"
  post "sign_up", to: "registration#create"
  delete "logout", to: "sessions#destroy"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  get "password", to: "password#edit", as: :edit_password
  patch "password", to: "password#update"
end
