class HomeController < ApplicationController

	require 'ladder'
	require 'words4'


	def index
	@start = dictionary.sample
	@goal = dictionary.sample
	end

	def show
		@start = params[:start]
		@query1 = params[:query1]
		@query2 = params[:query2]
		@query3 = params[:query3]
		@query4 = params[:query4]
		@query5 = params[:query5]
		@goal = params[:goal]
		@array = [@start,@query1,@query2,@query3,@query4,@query5,@goal]
		@array = @array.reject { |c| c.empty?}
		@won = legal @array
		if @won == true
			@won = "WON"
		else 
			@won = "LOST"
		end
	end

end
