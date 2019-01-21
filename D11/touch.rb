require_relative './lib/user'
require_relative './lib/event'
require 'pry'

julie = User.new('julie@tropchaude.com')
julie.name = 'Julie'
puts julie.name
#puts julie.email
#puts julie.name
#puts User.array
test = Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
test.print_event
test.postpone_24
test.print_event
