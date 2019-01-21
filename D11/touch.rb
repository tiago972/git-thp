require_relative './lib/user'
require_relative './lib/event'
require_relative './lib/event_creator'
require 'pry'



#puts "#{test.attendees[0].email}"
#User.new("julie@julie.com")
#User.new("jean@jean.com")
#julie = User.find_by_email("julie@julie.com")
#jean = User.find_by_email("jean@jean.com")
#e = Event.new("2019-01-13 09:00", 10, "standup quotidien", [julie, jean])

event_creator
Event.find_by_title("fuck").to_s
