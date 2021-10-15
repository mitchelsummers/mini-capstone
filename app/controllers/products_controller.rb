class ProductsController < ApplicationController
  def index
    all_products = Product.all
    render json: all_products
  end
  def show
    id_value = params[:id]
    product_id = Product.find_by(id: id_value)
    render json:  product_id
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
