git config --list | grep heroku

heroku git:remote -a your-crypto-wallet

git push heroku master

rails webpacker:install

rails assets:precompile RAILS_ENV=production

heroku run rails db:migrate

fierce-plateau-99371.herokuapp.com

VAGRANT:

vagrant init ubuntu/bionic64
vagrant up (inicia a partir do arquivo Vagrantfile)
vagrant halt (parar todas as vms)
vagrant ssh

Configurando VM Ubuntu:

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install -y build-essential autoconf bison libssl-dev libyaml-dev libbreadline-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm-dev libpq-dev curl ruby-full

sudo apt-get install git

git config --global user.name 'Daruedo'
git config --global user.email 'daruedo@gmail.com'

git config -l
ruby -v

gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

curl -sSL https://get.rvm.io | bash

source /home/vagrant/.rvm/scripts/rvm

rvm list known

rvm install 2.4

rvm list

rvm use 2.4 --default

gem install rails -v 5.2

gem install racc -v 1.5.2
gem install nokogiri -v 1.10.10
gem install sprockets -v 3.7.2
gem install sprockets-rails -v 3.2.2
gem install globalid -v 0.4.2

sudo apt-get install nodejs
nodejs --version

sudo apt-get install mysql-client mysql-server libmysqlclient-dev
sudo mysql -u root -p
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '********';
FLUSH PRIVILEGES;

sudo apt-get install postgresql postgresql-contrib libpq-dev

sudo -u postgres createuser -rds vagrant
createdb vagrant

psql
\q (sair)

rails new testeapp-mysql -d mysql

rails db:create db:migrate

rails new testeapp-postgres -d postgresql

vagrant plugin install vagrant-vbguest

git clone https://github.com/Daruedo/ruby-on-rails

rails s -b 0.0.0.0

_____

history -c

_____

Modulo 05

Pagina principal >> Fazer pesquisas
>> Responder questões

Pagina principal >> Area perfil do usuario
>> cadastrar todos os dados
>> verificar a assinatura do site

Pagina principal >> Area Administrativa
>> cadastrar novas questões
>> verificar quantos inscritos o site possui



