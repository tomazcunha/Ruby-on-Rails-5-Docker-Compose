# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cadastrando Moedas..."

Coin.create!(
  [
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
    }
  ]
)

puts "Fim do cadastro de Moedas!"
