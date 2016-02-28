class RenameTypeToAttribute < ActiveRecord::Migration
  def change
		rename_column :cards, :type, :attribute
  end
end
