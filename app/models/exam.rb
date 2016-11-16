class Exam < ApplicationRecord
	belongs_to :student
	has_many :results
	has_many :marks
end
