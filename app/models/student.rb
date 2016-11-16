class Student < ApplicationRecord
	belongs_to :section
	has_many :student_attendances
	has_many :exams
	has_many :results
	has_many :marks
	has_many :subjects
end
