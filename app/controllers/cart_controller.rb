class CartController < ApplicationController

  def index
    quantity = Hash.new(0)
    total_price = 0
    current_user.cart.each do |i|
      item = Item.find(i)
      quantity[i] += 1
      total_price += item.price
    end
    c = Cart.new
    c.price = (total_price*100).to_i
    c.quantity = quantity
    c.name = "#{current_user.name}'s Cart"
    c.permalink = SecureRandom.uuid
    c.save
    @cart = Cart.find(c.id)
  end

  def update
    @item = Item.find(params[:item_id])
    current_user.cart << @item.id
    current_user.save
    redirect_to items_path, notice:"Your cart was successfully updated."
  end

  def delete
    @item = Item.find(params[:item_id])
    i = @item.id
    puts "I: "
    puts i
    puts "Cart " + current_user.cart.to_s
    puts  "index: " + current_user.cart.find_index(i.to_s)
    current_user.cart.delete_at(current_user.cart.find_index(i))
    puts current_user.cart
    current_user.save
    redirect_to items_path, notice: "Your item has been successfully removed."
  end

  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy
    @cart.save
    current_user.cart = []
    current_user.save
    redirect_to cart_index_path, notice: 'Your cart is empty.'
  end
end
