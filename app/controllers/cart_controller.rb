class CartController < ApplicationController

  def index
    @cart = Item.where(item_id: current_user.cart)
    @total_price = 0
  end

  def show

  end

  def create
    puts "I am in the create method"
    @item = Item.find(params[:id])
    current_user.update_attribute(:cart, current_user.cart << @item.id)
    redirect_to @item_path, notice:"Your task was successfully updated"
  end

  def edit

  end

  def update
    puts "I am in the update method"
    @item = Item.find(params[:id])
    current_user.update_attribute(:cart, current_user.cart << @item.id)
    redirect_to @item_path, notice:"Your task was successfully updated"
  end


end
