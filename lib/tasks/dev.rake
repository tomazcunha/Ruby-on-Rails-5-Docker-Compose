namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    # %x(rails db:drop db:create db:migrate db:seed)
    # puts para imprimir os resultados
    puts %x(rails db:drop db:create db:migrate db:seed)
    
    # ou assim, que mostra os resultado de cada um ao terminar
    # e não ao mesmo tempo
    # puts %x(rails db:drop)
    # puts %x(rails db:create)
    # puts %x(rails db:migrate)
    # puts %x(rails db:seed)
  end

end
