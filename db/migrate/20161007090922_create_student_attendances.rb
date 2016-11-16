class CreateStudentAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :student_attendances do |t|
      t.boolean :is_active, :default => false
      t.timestamps
    end
  end
end
