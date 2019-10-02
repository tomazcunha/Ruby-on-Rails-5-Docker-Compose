namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    # %x(rails db:drop db:create db:migrate db:seed)
    # puts para imprimir os resultados

    if Rails.env.development?
        spinner = TTY::Spinner.new("[:spinner] Executando 'rails db:drop' ...")
        spinner.auto_spin
        %x(rails db:drop)
        spinner.success('(Cocluído com sucesso!)')

        spinner = TTY::Spinner.new("[:spinner] Executando 'rails db:create' ...")
        spinner.auto_spin
        %x(rails db:create)
        spinner.success('(Cocluído com sucesso!)')

        spinner = TTY::Spinner.new("[:spinner] Executando 'rails db:migrate' ...")
        spinner.auto_spin
        %x(rails db:migrate)
        spinner.success('(Cocluído com sucesso!)')

        spinner = TTY::Spinner.new("[:spinner] Executando 'rails db:seed' ...")
        spinner.auto_spin
        %x(rails db:seed)
        spinner.success('(Cocluído com sucesso!)')

    end
  end

end
