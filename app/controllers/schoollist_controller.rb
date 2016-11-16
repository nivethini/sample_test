class SchoollistController < ApplicationController
	def index
	@school = School.all
	
	end

	def show
	@school = School.find(params[:id])
	# @standard = @school.standards
	end

	def standard
	@school = School.find(params[:id])
	@standard = @school.standards
	end

	def show_standard

	@standard = Standard.find(params[:id])
	# @section = @standard.sections
	end

	def section
	@standard = Standard.find(params[:id])
	@section = @standard.sections
	end

	def show_section
	@section = Section.find(params[:id])
	end

	def student
	@section = Section.find(params[:id])
	@student = @section.students
	end

	def show_student
	@student = Student.find(params[:id])
	end

	def exam
	@student = Student.find(params[:id])
	@result = @student.results
	end






	def show_section_subject
	@student = Student.find(params[:id])
	@subject = @student.subjects
	end

	def show_result
	@subject = Subject.find(params[:id])
	@result = @subject.results
	end


	def show_attendance
	@student = Student.find(params[:id])
	@student_attendance = @student.student_attendances
	end

	def attendance
		@student_attendance = StudentAttendance.all
	end



end
