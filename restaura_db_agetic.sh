#!/bin/bash
# restaura la base de datos AGETIC en el sistema de activos.

cd
cd dev/ruby/nsiaf
rvm use ruby-2.3.1@rails_4_2
# rvm list
# rvm gemset list
rake db:drop RAILS_ENV=development
rake db:create RAILS_ENV=development
mysql -u root -p -b activos_development < ~/dev/ruby/scripts/files/activos.20161214.0950.sql
rake db:migrate RAILS_ENV=development
rails c
