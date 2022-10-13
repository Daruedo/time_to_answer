# Ruby on Rails 5

Aplicação de criptomoeda

- Rails version: 5.2.8.1
- Ruby version: 2.7.6 (x64-mingw32)

## Tecnologias:

- Linguagem Ruby
- Framework Ruby on Rails
- Banco de dados Sqlite

### Comandos:
```
rails _5.2_ new crypto_wallet
```

```
rails server
```

rails db:drop
rails db:drop:_unsafe
rails db:create
rails db:migrate
rails db:seed
Couldn't find database client: sqlite3.exe. Check your $PATH and try again.

rails g task dev setup

### Generate Scaffold:
Coin
```
rails g scaffold Coin description:string acronym:string url_image:string
```
rails g scaffold MiningType name:string acronym:string

rails g controller welcome index
rails d controller teste

rails g model 
