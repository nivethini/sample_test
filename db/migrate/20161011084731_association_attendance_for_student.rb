class AssociationAttendanceForStudent < ActiveRecord::Migration[5.0]
  def change
  	add_reference :student_attendances, :student, foreign_key:true
  end
end
