Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "flowers#home"

  get "about", to: "pages#about"
  get "service", to: "pages#service"
  get "abonnement", to: "pages#abonnement"

  resources :flowers

  resources :join_table_flowers_carts, only: [:create, :update, :destroy]
  # resources :join_table_flowers_cart

  resources :carts, except: [:index, :new, :edit]
end
