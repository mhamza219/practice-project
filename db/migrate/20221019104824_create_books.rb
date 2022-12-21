class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.integer :edition

      t.timestamps
    end
  end
end
