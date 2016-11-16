class CreateStandards < ActiveRecord::Migration[5.0]
  def change
    create_table :standards do |t|
      t.string :category
      t.references :school, index: true
      t.timestamps
    end
  end
end
