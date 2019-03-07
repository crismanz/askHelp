#!/bin/bash

sudo apt-get -y install ruby build-essential patch ruby-dev zlib1g-dev liblzma-dev libsqlite3-dev ruby-execjs

sudo gem install bundler
sudo gem install nokogiri
sudo gem install sqlite3 -v '1.3.13'

bundle install

bin/rails db:migrate RAILS_ENV=development

bin/rails s
