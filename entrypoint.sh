#!/bin/bash
set -e

rm -f tmp/pids/server.pid

bundle exec rails db:create
bundle exec rails db:migrate
bundle exec rails db:seed

exec bundle exec rails s -b '0.0.0.0'
