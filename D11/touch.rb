require_relative './lib/user'
require 'pry'

julie = User.new('julie@tropchaude.com')
julie.name = 'Julie'
puts julie.email
puts User.array
