#!/usr/bin/env bash
# exit on error
set -o errexit
# Install PostgreSQL client
apt-get update && apt-get install -y libpq-dev

bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean

# If you're using a Free instance type, you need to
# perform database migrations in the build command.
# Uncomment the following line:

bundle exec rails db:migrate