class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to root_path, notice: 'Order was placed successfully'
    end
  end

  private

  def order_params
    params.require(:order).permit(:user_id, :product_id, :phone_number, :address, :quantity)
  end

end
