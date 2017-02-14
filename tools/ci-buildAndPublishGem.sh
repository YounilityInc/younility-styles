#!/bin/bash

set -e

echo -e "---\n:ci_key: $GEM_KEY" > ~/.gem/credentials
chmod 0600 ~/.gem/credentials
gem install bundler
bundle config mirror.https://rubygems.org http://$GEMCACHE
bundle install --clean --path=vendor/bundle --jobs=4 --retry=3
bundle exec rake build
GEMFILE=$(ls pkg)
gem push --key ci_key --host http://$GEMCACHE/private pkg/$GEMFILE