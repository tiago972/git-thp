require 'bundler'
Bundler.require


$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/application'


#Lance le rooter
Application.new.perform
