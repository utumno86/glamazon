class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :price
      t.uuid :permalink
      t.string :name
      t.json :quantity

      t.timestamps null: false
    end
  end
end
