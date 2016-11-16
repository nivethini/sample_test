class CreateMarks < ActiveRecord::Migration[5.0]
  def change
    create_table :marks do |t|
      t.references :student, index: true
      t.references :subject, index: true
      t.references :exam, index: true
      t.timestamps
    end
  end
end
