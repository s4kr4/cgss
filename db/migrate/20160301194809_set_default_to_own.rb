class SetDefaultToOwn < ActiveRecord::Migration
  def change
		change_column :cards, :own, :boolean, default: false
  end
end
