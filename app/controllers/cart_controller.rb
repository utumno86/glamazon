class CartController < ApplicationController

  def index
    @cart = Item.where(id: current_user.cart)
    @total_price = 0
  end

  def update
    @item = Item.find(params[:item_id])
    puts @item.name
    current_user.cart << @item.id
    current_user.save
    redirect_to items_path, notice:"Your task was successfully updated"
  end


end
