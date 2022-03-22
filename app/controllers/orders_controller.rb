class OrdersController < ApplicationController
  def show
    order = Order.find_by(id: params[:id])
    if order.user_id == current_user.id
      render json: order
    else
      render json: {}, status: :unauthorized
    end
  end

  def index
    if current_user
      order = current_user.orders
      render json: order
    else
      render json: {}, status: :unauthorized
    end
  end
  
  def create
    product = Product.find_by(id: params[:product_id])
    subtotal = params[:quantity].to_i * product.price
    tax = subtotal * 0.09
    total = subtotal + tax
    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: subtotal,
      tax: tax,
      total: total)
    order.save
    render json: order.as_json
  end 
end
