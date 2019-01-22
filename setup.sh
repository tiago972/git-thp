#!/bin/bash

rspec --ini
mkdir lib
mkdir lib/app
mkdir lib/views
mkdir db
echo "require 'bundler'
Bundler.require" > app.rb
touch README.md
echo "source \"https://rubygems.org\"
ruby '2.5.1'
gem 'rspec'
gem 'pry'
gem 'rubocop', '~> 0.57.2'" > Gemfile
touch .env
echo ".env" > .gitignore
