$:.unshift File.expand_path("./../lib", __FILE__)
require 'bundler'
require 'csv'
Bundler.require

require 'app/router'

Router.new.perform
