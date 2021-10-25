class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    orders = current_user.orders
    render json: orders
  end

  def create
    product = Product.find_by(id: params[:product_id])
    calculated_subtotal = product.price * params[:quantity]
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    order = Order.new(
      user_id: current_user.id, 
      product_id: params["product_id"], 
      quantity: params["quantity"],
      subtotal: calculated_subtotal,#(Product.find_by(id: params["product_id"]).price * params["quantity"]),
      tax: calculated_tax,#(:subtotal.to_d * 0.09),
      total: calculated_total #params["subtotal"].to_d + params["tax"].to_d
    )
    if order.save
      render json: order
    else
      render json: {errors: order.errors.full_messages}, status: 406 
    end
  end

  def show
    order = current_user.orders.find_by(id: params[:id])
    render json: order
  end

end
