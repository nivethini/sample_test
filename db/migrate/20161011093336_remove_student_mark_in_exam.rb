class RemoveStudentMarkInExam < ActiveRecord::Migration[5.0]
  def change
  	remove_column :exams, :student_mark, :integer
  end
end
