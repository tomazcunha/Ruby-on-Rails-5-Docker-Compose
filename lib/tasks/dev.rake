namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do

    if Rails.env.development?

      show_spinner("Apagando DB: 'rails db:drop'") { %x(rails db:drop) }

      show_spinner("Criando DB: 'rails db:create'") { %x(rails db:create) }

      show_spinner("Migrando DB: 'rails db:migrate'") { %x(rails db:migrate) }

      show_spinner("Populando DB: 'rails db:seed'") { %x(rails db:seed) }

    end
  end

  private

  def show_spinner(msg_start, msg_end = "Concluído!")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start} ...")
    spinner.auto_spin
    yield
    spinner.success("#{msg_end}")
  end

end
