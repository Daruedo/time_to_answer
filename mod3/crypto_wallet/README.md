- Reverte ultimo schema realizado no banco

``` rails db:rollback ```

- Apaga scaffold

``` rails destroy scaffold MiningType ```

- Cria 

``` rails generate scaffold MiningType description:string acronym:string ```

- Migrate

``` rails db:migrate ```

- Task

``` rails dev:setup ```

- Migração stand alone (adicionar coluna Tipo de Mineração na tabela Moedas )
Associação belongs_to

``` rails generate migration AddMiningTypeToCoins mining_type:references ```
&& Migrate

- DB Console

``` rails dbconsole ```
Couldn't find database client: sqlite3.exe. Check your $PATH and try again.

- Comandos console

``` Coin.all ```
``` Coin.all.sample ```
``` Coin.find_by(acronym: 'BTC') ```
``` Coin.all.map {|coin| coin.description} ```
``` Coin.all.map(&:description) ```
``` Coin.all.pluck(:description, :acronym) ```
``` aaa ```

- 

``` aaa ```

gem 'rails-i18n', '~> 5.1'