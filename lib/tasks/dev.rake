namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do

    if Rails.env.development?

        show_spinner("'rails db:drop'") do
          %x(rails db:drop)
        end

        show_spinner("'rails db:create'") do
          %x(rails db:create)
        end

        show_spinner("'rails db:migrate'") do
          %x(rails db:migrate)
        end

        show_spinner("'rails db:seed'") do
          %x(rails db:seed)
        end

    end
  end

  def show_spinner(msg_start, msg_end = "Concluído!")
    spinner = TTY::Spinner.new("[:spinner] Executando #{msg_start} ...")
    spinner.auto_spin
    yield
    spinner.success("#{msg_end}")
  end

end
