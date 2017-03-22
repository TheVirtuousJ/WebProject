class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.integer :multiverse_index
      t.integer :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
