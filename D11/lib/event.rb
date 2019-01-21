require 'time'
require 'pry'

class Event
	attr_accessor :start_date, :duration, :title, :attendees

	def initialize(start_date, duration, title, attendees)
		@start_date, @duration, @title, @attendees = Time.parse(start_date), duration, title, attendees
	end
	
	def postpone_24
		@start_date+=(60 * 60 * 24)
	end

	def print_event
		puts @start_date.strftime("%F %T")
		puts @duration
		puts @title
		puts @attendees
	end

end
