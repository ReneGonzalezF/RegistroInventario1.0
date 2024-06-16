Rails.application.routes.draw do
  # Rutas para productos
  resources :productos do
    patch 'eliminar_unidad', on: :member
  end

  # Rutas para la autenticación de usuario
  get 'login', to: 'user_sessions#new'     # Mostrar formulario de login
  post 'login', to: 'user_sessions#create' # Procesar inicio de sesión
  delete 'logout', to: 'user_sessions#destroy' # Procesar cierre de sesión

  # Ruta para la salud de la aplicación
  get "up" => "rails/health#show", as: :rails_health_check

  # Ruta raíz, que redirige a login si no hay sesión iniciada o a productos#index si hay sesión
  root to: 'user_sessions#new'

  # Otras rutas generadas automáticamente por Devise para la gestión de usuarios
  devise_for :users

  # Rutas para la gestión de usuarios si fuese necesario
  # get 'usuarios/edit', to: 'usuarios#edit'
  # patch 'usuarios', to: 'usuarios#update'
  # delete 'usuarios', to: 'usuarios#destroy'

  # Recursos para la gestión de usuarios si se necesita más adelante
  # resources :usuarios, only: [:edit, :update, :destroy]
end
