class SetTypeToAttr < ActiveRecord::Migration
  def change
		change_column :cards, :attr, :string, default: "None"
  end
end
