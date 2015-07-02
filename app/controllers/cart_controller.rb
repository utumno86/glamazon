class CartController < ApplicationController

  def index
    quantity = Hash.new(1)
    total_price = 0
    current_user.cart.each do |i|
      item = Item.find(i)
      puts item.name
      quantity[i] += 1
      total_price += item.price
    end
    puts quantity
    puts total_price
    c = Cart.new
    c.price = (total_price*100).to_i
    c.quantity = quantity
    c.name = "Glamazon Cart"
    c.permalink = SecureRandom.uuid
    c.save
    @cart = Cart.find(c.id)
    puts @cart

  end

  def update
    @item = Item.find(params[:item_id])
    puts @item.name
    current_user.cart << @item.id
    current_user.save
    redirect_to items_path, notice:"Your task was successfully updated"
  end

  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy
    @cart.save
    current_user.cart = []
    current_user.save
    redirect_to root_path, notice: 'Item was successfully destroyed.'

  end


end
