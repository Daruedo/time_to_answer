Comandos para rodar no terminal bash:

ruby -v
ruby 2.4.5p335

rails -v
Rails 5.2.1

rails new time_to_answer -T

cd time_to_answer

rails g controller welcome index

dentro de config/routes.rb:
root to: 'welcome#index'

rails g controller ...

Devise:

rails g devise:install

rails g devise Admin
rails g devise Profile

rails g devise:views admins
rails g devise:views profiles

rails db:migrate

rails g controller admins_backoffice/welcome index
rails g controller profiles_backoffice/welcome index
rails g controller admins_backoffice
rails g controller profiles_backoffice

rails d controller welcome
rails g controller site/welcome index
rails g controller site

rails d devise Profile
rails d controller profiles_backoffice/welcome
rails d controller profiles_backoffice

rails g devise User
rails g devise:views users
rails g controller users_backoffice/welcome index
rails g controller users_backoffice

rails db:drop:_unsafe db:create db:migrate

rails g task dev setup

#Gemfile
gem 'tty-spinner'
bundle install

---

https://github.com/jacksonpires/curso-rails-5x

---

## Erros:

    Ao subir vagrant up pela primeira vez:

        Vagrant was unable to mount VirtualBox shared folders. This is usually
        because the filesystem "vboxsf" is not available. This filesystem is
        made available via the VirtualBox Guest Additions and kernel module.
        Please verify that these guest additions are properly installed in the
        guest. This is not a bug in Vagrant and is usually caused by a faulty
        Vagrant box. For context, the command attempted was:

        mount -t vboxsf -o uid=1000,gid=1000,_netdev vagrant /vagrant

        The error output from the command was:

        : Invalid argument

    Ao criar aplicação com  ``` rails new time_to_answer -T ```

        Gem::RuntimeRequirementNotMetError: minitest requires Ruby version < 4.0, >=
        2.6. The current ruby version is 2.4.0.
        An error occurred while installing minitest (5.16.3), and Bundler
        cannot continue.
        Make sure that `gem install minitest -v '5.16.3' --source
        'https://rubygems.org/'` succeeds before bundling.

        In Gemfile:
        rails was resolved to 5.2.8.1, which depends on
            actioncable was resolved to 5.2.8.1, which depends on
            actionpack was resolved to 5.2.8.1, which depends on
                actionview was resolved to 5.2.8.1, which depends on
                rails-dom-testing was resolved to 2.0.3, which depends on
                    activesupport was resolved to 5.2.8.1, which depends on
                    minitest
                run  bundle exec spring binstub --all


Parar aplicação carregada em memória (2º plano):

spring status
spring stop

sudo rm /vagrant/time_to_answer/tmp/pids/server.pid

lsof -wni tcp:3000

kill -9 $(lsof -i tcp:3000 -t)