class StudentAttendance < ApplicationRecord
	belongs_to :student, :dependent => :delete
end
