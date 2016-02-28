class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :number
      t.string :image
      t.string :name
      t.string :rarity
      t.string :type
      t.boolean :own

      t.timestamps null: false
    end
  end
end
