class WelcomeController < ApplicationController
  def index
    # armazenando este valor quando a view index for chamada
    cookies[:curso_coockie] = "Curso de Ruby on Rails [COOCKIE]"
    session[:curso_session] = "Curso de Ruby on Rails [SESSION]"

    @nome = params[:nome]
    @curso = params[:curso]
  end
end
