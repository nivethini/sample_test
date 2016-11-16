class Result < ApplicationRecord
	belongs_to :student
	belongs_to :subject
	belongs_to :mark
	belongs_to :exam
end
