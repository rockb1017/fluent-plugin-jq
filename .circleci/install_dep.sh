#!/usr/bin/env bash
set -e
sudo apt-get update
sudo apt-get install jq
gem install bundler
bundle update --bundler
bundle install