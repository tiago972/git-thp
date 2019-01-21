require 'time'
require 'pry'

class Event
	attr_accessor :start_date, :duration, :title, :attendees
	@@var_array = []

	def initialize(start_date, duration, title, attendees)
		@start_date, @duration, @title, @attendees = Time.parse(start_date), duration, title, attendees
		@@var_array << self
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
	
	def self.find_by_title(title)
		return @@var_array.select{|x| x.title ==  title}[0]
	end

	def to_s
		puts "Titre: " + @title
		puts "Date de début: " + @start_date.strftime("%F %T").to_s
		puts "Durée: " + @duration.to_s + " min"
		puts "Invités: " +  @attendees.join(", ")
	end
end
