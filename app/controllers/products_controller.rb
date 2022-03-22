class ProductsController < ApplicationController
  def index
    product = Product.all
    render json: product
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: product
  end

  def create
    product = Product.new(name: params[:name], price: params[:price], description: params[:description])
    if product.save
      render json: product
    else
      render json: {message: product.errors.full_messages}
    end
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name]
    product.price = params[:price]
    product.description = params[:description]
    if product.save
      render json: product
    else
      render json: {message: product.errors.full_messages}
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.delete
  end
end
