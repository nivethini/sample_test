class CreateExams < ActiveRecord::Migration[5.0]
  def change
    create_table :exams do |t|
      t.string :type
      t.references :subject, index: true
      t.references :student, index: true
      
      t.timestamps
    end
  end
end
