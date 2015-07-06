class MakeCartPriceADecimal < ActiveRecord::Migration
  def change
  	change_column :carts, :price, :decimal, :precision => 8, :scale => 2
  end
end
