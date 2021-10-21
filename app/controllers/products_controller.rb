class ProductsController < ApplicationController
  def index
    all_products = Product.all
    render json: all_products
  end

  def create
    product = Product.new(
      name: params["name"], 
      price: params["price"], 
      image_url: params["image_url"], 
      description: params["description"],
      supplier_id: params["supplier_id"]
    )
    if product.save
      render json: product
    else
      render json: {errors: product.errors.full_messages}, status: 406 
    end
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: product
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["description"] || product.description
    product.supplier_id = params["supplier_id"] || product.supplier_id
    if product.save
      render json: product
    else
      render json: {errors: product.errors.full_messages}, status: 406 
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message: "product destroyed"}
  end
  
end
