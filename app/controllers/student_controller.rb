class StudentController < ApplicationController
	def index
	@student = Student.all	
	end

	def show
	@student = Student.find(params[:id])
	end

	def new
		@student = Student.new
	end

	def create
		@student = Student.new(student_params)
		if @student.save
			redirect_to :action => "index"
		else
			render 'new'
		end
	end

	def edit
	@student = Student.find(params[:id])
	end


	def update
		@student = Student.find(params[:id])
		if @student.update_attributes(student_params)
			redirect_to action: "index"
		else
			render 'edit'
		end
	end

	def delete
		@student = Student.find(params[:id]).destroy		
		redirect_to action: "index"
	end

	private
	def student_params
		params.require(:student).permit(:first_name, :last_name, :address, :section_id)
	end

end
