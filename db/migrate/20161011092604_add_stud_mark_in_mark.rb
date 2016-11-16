class AddStudMarkInMark < ActiveRecord::Migration[5.0]
  def change
  	add_column :exams, :student_mark, :integer
  end
end
