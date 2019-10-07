class ApplicationController < ActionController::Base

  # ApplicationController vai ser executado antes de qualquer controle
  before_action :set_locale

  def set_locale
    if params[:locale]
      cookies[:locale] = params[:locale]
    end

    if cookies[:locale]
      if I18n.locale != cookies[:locale]
        I18n.locale = cookies[:locale]
      end
    end
    # I18n.locale = params[:locale] || I18n.default_locale
  end
end
