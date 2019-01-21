require 'time'
require 'pry'

class Event
	attr_accessor :start_date, :duration, :title, :attendees

	def initialize(start_date, duration, title, attendees)
		@start_date, @duration, @title, @attendees = Time.parse(start_date), duration, title, attendees
	end

	def postpone_24
		return	@start_date+=(60 * 60 * 24)
	end

	def end_date
		return @start_date + @duration * 60
	end

	def is_past?
		case
		when Time.now < @start_date
			return false
		else
			return true	
		end
	end

	def is_future?
		!self.is_past?	
	end

	def is_it_soon?
		case
		when (Time.now + (30 * 60) >= @start_date) && !self.is_past?
			return true
		else
			return false
		end
	end
	def print_event
		puts @start_date.strftime("%F %T")
		puts @duration
		puts @title
		puts @attendees
	end

end
