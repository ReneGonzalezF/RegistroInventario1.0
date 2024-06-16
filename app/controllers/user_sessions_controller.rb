# app/controllers/user_sessions_controller.rb

class UserSessionsController < ApplicationController
  def new
    # Acción para mostrar el formulario de login
  end

  def create
    username = params[:username]
    password = params[:password]

    if username == APP_USERNAME && password == APP_PASSWORD
      session[:user_id] = 1  # Aquí podrías establecer el ID de usuario real
      redirect_to productos_path, notice: "¡Bienvenido!"
    else
      flash.now[:alert] = "Usuario o contraseña incorrectos"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil  # Cerrar sesión
    redirect_to login_path, notice: "Sesión cerrada"
  end
end



