class Api::StudentsController < ApplicationController
	def index
	@attendances = StudentAttendance.all
	render json:{
		status:true,
		data:{Attendance: @attendances}

	}
	end

end
