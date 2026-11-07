#!/usr/bin/env bash

set -o errexit

bundle install
bin/rails assets:precompile
bin/rails assets:clean
bin/rails db:migrate

# bundle install: Installs the Ruby gems your app needs.
# assets:precompile: Prepares CSS and JavaScript for production.
# assets:clean: Removes older compiled assets.
# db:migrate: Applies database changes.