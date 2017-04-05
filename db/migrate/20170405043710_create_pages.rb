class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :name
      t.string :permalink
      t.text :content

      add_index :pages, :permalink

      t.timestamps
    end
  end
end
