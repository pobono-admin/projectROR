class WelcomeController < ApplicationController
	def say
		@disable_nav = true
		@disable_foot = true
	end
	
	def about
	end

	def index
	end
end