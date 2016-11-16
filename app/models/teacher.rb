class Teacher < ApplicationRecord
	belongs_to :section
	has_many :subjects
end
