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
      description: params["description"]
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

#  def product_query_parameter_id
 #   input = params[:id]
  #  product_id = Product.find_by(id: input)
   # render json:  product_id
  #end
  #def body_params
   # input_value = params["data"]
    #render json: {message: "the blank is #{input_value}"}
  #end
end
