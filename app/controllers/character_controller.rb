$search_term = "all"
class CharacterController < ApplicationController
  def index
  	$search_term = params[:looking_for] || "all"

  	case $search_term
		when "all"
			@result = Character.all
		when "events"
			@result = Character.events
		else
			@result = Character.search($search_term)
	end

  	@characters = JSON.parse(@result.body || "{}")["data"]["results"]	
  end

  def detail
  	@search_id = params[:search_id]
  	case $search_term
		when "events"
			@result = Character.searchEvents(@search_id)
		else
			@result = Character.search(@search_id)
	end  	
  	@character = JSON.parse(@result.body || "{}")["data"]["results"][0]
  end
end
