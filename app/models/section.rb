class Section < ApplicationRecord
	belongs_to :standard
	has_many :students
	has_many :teachers
	has_many :subjects
end
