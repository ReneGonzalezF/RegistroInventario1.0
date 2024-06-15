# config/routes.rb

Rails.application.routes.draw do
  resources :productos do
    patch 'eliminar_unidad', on: :member
  end
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check
  root to: 'productos#index'

end
