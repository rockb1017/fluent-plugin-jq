#!/usr/bin/env bash
set -e
apt-get update
apt-get install jq
gem install bundler
bundle update --bundler
bundle install