class CreateElectronicGoods < ActiveRecord::Migration[6.1]
  def change
    create_table :electronic_goods do |t|
      t.string :name
      t.integer :price
      t.string :delivery_address
      t.string :pincode

      t.timestamps
    end
  end
end
