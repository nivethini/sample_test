class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.string :status
      t.references :student, index: true
      t.references :subject, index: true
      t.references :mark, index: true
      t.references :exam, index: true
      t.timestamps
    end
  end
end
