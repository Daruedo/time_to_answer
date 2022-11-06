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
yarn add font-awesome@4.6.3
yarn add nprogress
yarn add malihu-custom-scrollbar-plugin
yarn add fastclick

rails g controller AdminsBackoffice::Admins index

yarn add bootstrap-growl-ifightcrime

rails g kaminari:views bootstrap4
rails g kaminari:views bootstrap3 (bug)