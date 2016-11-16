class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.string :type
      t.references :standard, index: true
      t.timestamps
    end
  end
end
