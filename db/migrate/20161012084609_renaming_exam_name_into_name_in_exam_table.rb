class RenamingExamNameIntoNameInExamTable < ActiveRecord::Migration[5.0]
  def change
  	rename_column :exams, :exam_name, :name
  end
end
