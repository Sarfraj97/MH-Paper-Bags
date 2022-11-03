class OrdersController < ApplicationController
  before_action :set_product, except: %i[ create update index ]
  before_action :set_order, only: %i[ show edit update destroy ]

  def index
    @orders = current_user.orders
  end

  def new
    @order = Order.new
  end

  def show;end

  def create
    @product = Product.find(params[:order][:product_id])
    @order = Order.new(order_params)

    if @order.save
      redirect_to orders_path, notice: 'Order was placed successfully'
    end
  end

  def edit;end

  def update
    @product = Product.find(params[:order][:product_id])
    if @order.update(order_params)
      redirect_to orders_path, notice: 'Order was updated successfully'
    end
  end

  def destroy
    if @order.destroy
      redirect_to orders_path, status: :see_other, notice: 'Order was cancelled sucessfully'
    end
  end

  private

  def order_params
    params.require(:order).permit(:user_id, :product_id, :phone_number, :address, :quantity)
  end

  def set_product
    @product = Product.find(params[:product_id])
  end

  def set_order
    @order = Order.find(params[:id])
  end
end
