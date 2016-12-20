#!/bin/bash
# restaura la base de datos ADSIB en el sistema de activos.

cd
cd dev/ruby/nsiaf
rvm use ruby-2.3.1@rails_4_2
# rvm list
# rvm gemset list
rake db:drop RAILS_ENV=test
rake db:create RAILS_ENV=test
rake db:migrate RAILS_ENV=test
