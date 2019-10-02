namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    # %x(rails db:drop db:create db:migrate db:seed)
    # puts para imprimir os resultados

    if Rails.env.development?
        spinner = TTY::Spinner.new("[:spinner] Executando tarefas ...", format: :pulse_2)
        spinner.auto_spin # Automatic animation with default interval
        # sleep(2) # Perform task
        puts %x(rails db:drop db:create db:migrate db:seed)
        spinner.stop('Cocluído com sucesso!') # Stop animation

    end
  end

end
