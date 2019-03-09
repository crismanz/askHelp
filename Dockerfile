FROM ruby:2.5.3

MAINTAINER "crissy" <crissy@nobody.com>

RUN apt-get update

RUN apt-get -y install ruby build-essential patch ruby-dev zlib1g-dev liblzma-dev libsqlite3-dev ruby-execjs

RUN gem install bundler
RUN gem install nokogiri
RUN gem install sqlite3 -v '1.3.13'

ADD . /
RUN bundle install

RUN bin/rails db:migrate RAILS_ENV=development

#bin/rails s -b '[::]'
