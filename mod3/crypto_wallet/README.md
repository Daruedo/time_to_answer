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

## Coisas que apaguei: 

```
I18n.l(Date.today)

- Cookies

No welcome controller:
cookies[:ruby] = "Curso de Ruby on Rails - Udemy [Cookie]"

Na view:
cookies[:ruby]

No layout:
<script>$.notify("Funcionou!!!", "success");</script>
```

---

gem 'rails-i18n', '~> 5.1'

''''
----


rails assets:precompile

set RAILS_ENV=production
bundle exec rake db:drop:_unsafe db:create db:migrate RAILS_ENV=production
bundle exec rake assets:precompile RAILS_ENV=production
bundle exec rake assets:precompile RAILS_ENV=production

rails s -e production

rails assets:precompile RAILS_ENV=production
rails assets:clobber RAILS_ENV=production

Para remover assets de produção quando voltar ao desenvolvimento:

rails assets:clobber

yarn add jquery
yarn add notify-js-legacy
yarn add popper.js

yarn add bootstrap



rails assets:clean RAILS_ENV=production

rails assets:clobber RAILS_ENV=production

bundle exec rake assets:precompile --trace RAILS_ENV=production