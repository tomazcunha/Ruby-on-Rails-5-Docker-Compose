namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do

    if Rails.env.development?

      commands = {
        "drop"=> "Apagando DB: 'rails db:drop'",
        "create" => "Criando DB: 'rails db:create'",
        "migrate" => "Migrando DB: 'rails db:migrate'",
        "seed" => "Populando DB: 'rails db:seed'"
      }

      commands.each do |command, msg|
        show_spinner(msg) { %x(rails db:#{command}) }
      end

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
