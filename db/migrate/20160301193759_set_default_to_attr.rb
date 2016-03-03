class SetDefaultToAttr < ActiveRecord::Migration
  def change
		change_column :cards, :attr, :string, default: false
  end
end
