require 'dotenv'
require 'twitter'
require_relative 'journalist'
Dotenv.load

def log_in
	client = Twitter::REST::Client.new do |config|
		config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
		config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
		config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
		config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
	end
end

def send_to(var_array)
	var_array.sample(5).each do |a| 
		log_in.update("Qu'est ce qui est plus merveilleux que de faire tourner des enfants sur un tourniquet ? Les arrêter avec une pelle #bonjour_monde " + a)
	end
end

def fav_topic(var_hashtag)	
	log_in.search(var_hashtag).take(25).each do |tweet|
		log_in.favorite(tweet.id)
	end
end

def follow_from_topic(var_hashtag)	
	log_in.search(var_hashtag).take(25).each do |tweet|
		log_in.follow(tweet.user.id)
	end
end

def stream 
	client = Twitter::Streaming::Client.new do |config|
		config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
		config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
		config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
		config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
	end
	client.filter(track: "#bonjour_monde") do |tweet|
		puts tweet.text
		if tweet.user.id != log_in.user.id
			log_in.favorite(tweet.id)
			log_in.follow(tweet.user.id)
		end
	end
end


#send_to($tab_var)
#find_topic("#bonjour_monde")
#follow_from_topic("#bonjour_monde")
stream
