class AddCartToUser < ActiveRecord::Migration
  def change
    add_column :users, :cart, :text, array:true, default: []
  end
end
