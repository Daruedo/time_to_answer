# Ruby on Rails 5

Boas práticas:
- The Rail Way
- DRY - Don'nt Repeat Yourself
- Convention Over Configuration

<a href="https://www.udemy.com/course/rubyonrails-5x/" target="_blank">Udemy</a>
## Ruby:
```
ruby - v
2.4.4
ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x64-mingw-ucrt]
```
## Gem:
```
gem install rails

gem install rails -v 5.2.0
gem install rails --version=5.2.0
```

```
rails new project
```
```
rails server
```

## RVM - Ruby Version Manager

Install:
```
\curl -sSL https://get.rvm.io | bash -s stable
```



Parar aplicação carregada em memória (2º plano):

spring status
spring stop

sudo rm /vagrant/time_to_answer/tmp/pids/server.pid

lsof -wni tcp:3000

kill -9 $(lsof -i tcp:3000 -t)

cd public
mkdir templates
cd templates
git clone https://github.com/ColorlibHQ/gentelella.git
cd gentelella
rm -rf .git

npm install --global yarn

yarn add 
yarn add bootstrap@4.6.0
yarn add popper.js
yarn add jquery@3.6.0
yarn add jquery.easing@1.4.1
yarn add @fortawesome/fontawesome-free@5.15.3

yarn add bootstrap@4.3.1
yarn add bootstrap@3.3.7
yarn add font-awesome@4.6.3
yarn add nprogress
yarn add malihu-custom-scrollbar-plugin
yarn add fastclick

rails g controller AdminsBackoffice::Admins index

yarn add bootstrap-growl-ifightcrime

rails g kaminari:views bootstrap4
rails g kaminari:views bootstrap3 (bug)

rails g model subject description:string
rails g model question description:text subject:references
rails g model answer description:text correct:boolean question:references

rails g controller AdminsBackoffice/Subjects

rails g controller AdminsBackoffice/Questions

rails g migration AddQuestionsCountToSubjects questions_count:integer
rails db:migrate

rails g migration AddNameToUsers first_name:string last_name:string

rails g controller UsersBackoffice::Profile

rails g model UserProfile address:string gender:string birthdate:date user:references

bin/spring stop
bin/spring status
pkill -9 spring


// "bootstrap": "4.6.0",
// require bootstrap-4.3.1/dist/css/bootstrap

yarn add jquery-ui

rails active_storage:install

rails db:migrate

rails g mailer AdminMailer

Configurando DigitalOcean para deploy:

ssh-keygen -t rsa

cat ~/.ssh/id_rsa.pub

rails g migration AddZipCodeToUserProfiles zip_code:string

rails g controller users_backoffice/zip_code

## Consumindo API via console (rails c)

uri = URI("https://viacep.com.br/ws/01001000/json/")
uri.scheme
uri.host
uri.path

require 'net/http'

Net::HTTP.get(uri)

cep = ActiveSupport::JSON.decode(
    Net::HTTP.get(
        URI("https://viacep.com.br/ws/01001000/json/")
    )
)

--

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install redis-server

redis-cli
ping

sudo apt-get install default-jdk

wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.3.0-amd64.deb
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.3.0-amd64.deb.sha512
shasum -a 512 -c elasticsearch-7.3.0-amd64.deb.sha512
sudo dpkg -i elasticsearch-7.3.0-amd64.deb

ps -p 1
systemd:
sudo systemctl start elasticsearch.service

curl http://localhost:9200

sudo vim /etc/elasticsearch/elasticsearch.yml

Question.reindex

Finalizando