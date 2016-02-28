class RenameAttributeToAttr < ActiveRecord::Migration
  def change
		rename_column :cards, :attribute, :attr
  end
end
