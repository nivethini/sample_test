class Subject < ApplicationRecord
	belongs_to :teacher
	has_many :results
	has_many :marks
	belongs_to :student
	belongs_to :section
end
