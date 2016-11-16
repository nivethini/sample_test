class Api::ResultsController < ApplicationController
	def index
		@results = Result.all	
		render json:{
			status:true,
			data:{Results: @results }
		}

	end

end
