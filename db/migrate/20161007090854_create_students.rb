class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.references :section, index: true
      t.timestamps
    end
  end
end
