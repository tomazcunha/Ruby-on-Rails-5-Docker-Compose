Rails.application.routes.draw do

  root to: "welcome#index"
  get 'welcome/index' #, to: 'welcome#index' # nao precisa por o to: para nao repetir welcome#index
  get '/inicio', to: 'welcome#index'

  resources :coins    # resources mapeia as 7 rotas padrão
  # get '/coins', to: 'coins#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
