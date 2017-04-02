class CreateSupertypes < ActiveRecord::Migration[5.0]
  def change
    create_table :supertypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
