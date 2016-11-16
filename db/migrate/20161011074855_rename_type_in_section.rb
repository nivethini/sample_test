class RenameTypeInSection < ActiveRecord::Migration[5.0]
  def change
  	rename_column :sections, :type, :category
  end
end
