namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando DB...") {%x(rails db:drop:_unsafe)}
      show_spinner("Criando DB...") {%x(rails db:create)}
      show_spinner("Migrando DB...") {%x(rails db:migrate)}
      %x(rails dev:add_mining_types)
      %x(rails dev:add_coins)
    else
      puts "Você não está em modo desenvolvimento!"
    end
  end

  desc "Cadastra as moedas"
  task add_coins: :environment do
    show_spinner("Cadastrando moedas...") do
      coins = [
        {
          description: "Bitcoin",
          acronym: "BTC",
          url_image: "https://s2.coinmarketcap.com/static/img/coins/64x64/1.png",
          mining_type: MiningType.find_by(acronym: 'PoW')
        },
        {
          description: "Ethereum",
          acronym: "ETH",
          url_image: "https://s2.coinmarketcap.com/static/img/coins/64x64/1027.png",
          mining_type: MiningType.all.sample
        },
        {
          description: "Dogecoin",
          acronym: "DOGE",
          url_image: "https://s2.coinmarketcap.com/static/img/coins/64x64/74.png",
          mining_type: MiningType.all.sample
        },
        {
          description: "Tether",
          acronym: "USDT",
          url_image: "https://s2.coinmarketcap.com/static/img/coins/64x64/825.png",
          mining_type: MiningType.all.sample
        },
        {
          description: "USD Coin",
          acronym: "USDC",
          url_image: "https://s2.coinmarketcap.com/static/img/coins/64x64/3408.png",
          mining_type: MiningType.all.sample
        },
        {
          description: "BNB",
          acronym: "BNB",
          url_image: "https://s2.coinmarketcap.com/static/img/coins/64x64/1839.png",
          mining_type: MiningType.all.sample
        },
        {
          description: "XRP",
          acronym: "XRP",
          url_image: "https://s2.coinmarketcap.com/static/img/coins/64x64/52.png",
          mining_type: MiningType.all.sample
        },
        {
          description: "Binance USD",
          acronym: "BUSD",
          url_image: "https://s2.coinmarketcap.com/static/img/coins/64x64/4687.png",
          mining_type: MiningType.all.sample
        },
        {
          description: "Cardano",
          acronym: "ADA",
          url_image: "https://s2.coinmarketcap.com/static/img/coins/64x64/2010.png",
          mining_type: MiningType.all.sample
        },
        {
          description: "Solana",
          acronym: "SOL",
          url_image: "https://s2.coinmarketcap.com/static/img/coins/64x64/5426.png",
          mining_type: MiningType.all.sample
        },
      ]

      coins.each do |coin|
          Coin.find_or_create_by!(coin)
      end
    end
  end

  desc "Cadastra os tipos de mineração"
  task add_mining_types: :environment do
    show_spinner("Cadastrando tipos de mineração...") do
      mining_types = [
        {
          description: "Proof of Work",
          acronym: "PoW"
        },
        {
          description: "Proof of Stake",
          acronym: "PoS"
        },
        {
          description: "Proof of Capacity",
          acronym: "Poc"
        }
      ]

      mining_types.each do |mining_type|
        MiningType.find_or_create_by!(mining_type)
      end
    end
  end

  private

  def show_spinner(msg_start, msg_end = "Concluído!")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}", format: :pulse_2)
    spinner.auto_spin
    yield
    spinner.success(msg_end)
  end
end
