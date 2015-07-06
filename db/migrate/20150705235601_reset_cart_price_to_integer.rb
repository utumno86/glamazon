class ResetCartPriceToInteger < ActiveRecord::Migration
  def change
  	change_column :carts, :price, :integer
  end
end
