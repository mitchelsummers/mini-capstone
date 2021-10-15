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
    product.save
    render json: product.as_json
  end
  def show
    id_value = params["id"]
    product = Product.find_by(id: id_value)
    render json: product
  end
  def update
    id_value = params["id"]
    product = Product.find_by(id: id_value)

    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["description"] || product.description

    product.save
    render json: product.as_json
  end
  def destroy
    id_value = params["id"]
    product = Product.find_by(id: id_value)
    product.destroy
  end
  def product_query_parameter_id
    id_value = params[:id]
    product_id = Product.find_by(id: id_value)
    render json:  product_id
  end
  def body_params
    input_value = params["data"]
    render json: {message: "the blank is #{input_value}"}
  end
end
