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