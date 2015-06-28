class CartController < ApplicationController

  def index
    @cart = Item.where(item_id: current_user.cart)
    @total_price = 0
  end

  def edit

  end

  def update
    @item = Item.find(params[:id])
    current_user.cart << @item.id
    if current_user.update(cart)
      redirect_to @item, notice:"Your task was successfully updated"
    else
      redirect_to @item, notice: "Your update failed"
    end
  end


end
