FROM ruby:2.7.0

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

RUN gem install bundler -v 2.4.22 && gem install rubygems-update -v 3.3.22

WORKDIR /app

COPY Gemfile /app/Gemfile

COPY Gemfile.lock /app/Gemfile.lock

RUN bundle install

COPY . /app

EXPOSE 3000
