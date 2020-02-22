require 'json'

class Character
	include HTTParty

	base_uri 'http://gateway.marvel.com/v1/public'

	def self.all()
		get ("/characters?ts=0218&apikey=93d15baaeb3ee61b58f83eb0f2f46a98&hash=2a7313568f11eb930be4bc3cfb438a33")
	end

	def self.search(id)
		get ("/characters/#{id}?ts=0218&apikey=93d15baaeb3ee61b58f83eb0f2f46a98&hash=2a7313568f11eb930be4bc3cfb438a33")
	end

	def self.events()
		get ("/events?ts=0218&apikey=93d15baaeb3ee61b58f83eb0f2f46a98&hash=2a7313568f11eb930be4bc3cfb438a33")
	end

	def self.searchEvents(id)
		get ("/events/#{id}?ts=0218&apikey=93d15baaeb3ee61b58f83eb0f2f46a98&hash=2a7313568f11eb930be4bc3cfb438a33")
	end	
end