class SchoolController < ApplicationController
	def index
	@school = School.all
	# render json:{status:true,
	# 	data:{School: @school}}
	end

	def show
	@school = School.find(params[:id])
	end

	def new
	@school = School.new
	end

	def create
	@school = School.new(schl_params)
	if @school.save
		# redirect_to action: "index"
		render json: {school: @school}
	else
		render 'new'
	end
end

	def edit
	@school = School.find(params[:id])	
	end

	def update
		@school = School.find(params[:id])	
		if @school.update_attributes(schl_params)
			redirect_to action: "index"
		else
			render 'edit'
		end
	end
	
	def delete
	@school = School.find(params[:id]).delete
	redirect_to action: "index"


	end



	private
	def schl_params
		params.require(:school).permit(:name, :address)
	end



end
