class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
      t.string :name
      t.references :student, index: true
      t.references :teacher, index: true
      t.references :section, index: true
      t.timestamps
    end
  end
end
