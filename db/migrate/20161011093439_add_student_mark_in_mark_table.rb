class AddStudentMarkInMarkTable < ActiveRecord::Migration[5.0]
  def change
  	add_column :marks, :student_mark, :integer
  end
end
