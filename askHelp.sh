#!/bin/bash

set -x

sudo apt-get install ruby

sudo gem install bundler

sudo apt-get install build-essential patch ruby-dev zlib1g-dev liblzma-dev
gem install nokogiri

sudo apt-get install libsqlite3-dev
sudo gem install sqlite3 -v '1.3.13'

bundle install

sudo apt-get install ruby-execjs

bin/rails s


