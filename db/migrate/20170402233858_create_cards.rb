class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.integer :multiverseid
      t.string :layout
      t.string :mana_cost
      t.integer :cmc
      t.string :full_type
      t.string :rarity
      t.text :text
      t.string :flavour
      t.string :artist
      t.string :number
      t.string :power
      t.string :toughness
      t.string :loyalty
      t.string :image_url
      t.string :set
      t.string :set_name
      t.decimal :price
      t.integer :quantity

      t.timestamps
    end
  end
end
