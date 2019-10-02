namespace :dev do
  desc "Configurar o ambiente de desenvolvimento"
  task setup: :environment do

    if Rails.env.development?

      commands = {
        "rails db:drop"=> "Apagando DB: 'rails db:drop'",
        "rails db:create" => "Criando DB: 'rails db:create'",
        "rails db:migrate" => "Migrando DB: 'rails db:migrate'",
        # "seed" => "Populando DB: 'rails db:seed'"
        "rails dev:add_coins" => "Populando DB: 'rails dev:add_coins'",
        "rails dev:add_mining_types" => "Populando DB: 'rails dev:add_mining_types'",
      }

      commands.each do |command, msg|
        show_spinner(msg) { %x(#{command}) }
      end
    end
  end

  desc "Cadastrar as Moedas"
  task add_coins: :environment do

    if Rails.env.development?
      coins = [
        {
          description:"Ethereum",
          acronym:" ETH",
          url_image:"https://www.goldeneaglecoin.com/resource/productimages/crypto-1oz-ethereum-obv.png"
        },
        {
          description:"Bitcoin",
          acronym:"BTC",
          url_image:"https://p7.hiclipart.com/preview/894/283/775/bitcoin-cash-cryptocurrency-bitcoin-gold-ethereum-bitcoin.jpg"
        },
        {
          description:"dash",
          acronym:"DASH",
          url_image:"https://criptohub.com.br/assets/svg/svg006.svg"
        },
        {
          description:"Ripple",
          acronym:"RPL",
          url_image:"https://www.comocomprarcriptomoedas.com/wp-content/uploads/2018/04/ripple-logo-xrp.png"
        },
        {
          description:"Iota",
          acronym:"IOT",
          url_image:"https://miro.medium.com/max/664/1*xo-u5QhLFYUcZwPKdhe8Cg.png"
        },
        {
          description:"ZCash",
          acronym:"ZEC",
          url_image:"https://www.zcashcommunity.com/wp-content/uploads/2017/01/cropped-yellow-zcash-logo.png"
        }
      ]

      coins.each do |coin|
        Coin.find_or_create_by!(coin)
      end
    end
  end


  desc "Cadastrar os tipos de mineração"
  task add_mining_types: :environment do
    mining_types = [
      {name:"Proof of Work", acronym:"PoW"},
      {name:"Proof of Stake", acronym:"PoS"},
      {name:"Proof of Capacity", acronym:"PoC"},
    ]

    mining_types.each do |mining_type|
      MiningType.find_or_create_by!(mining_type)
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
