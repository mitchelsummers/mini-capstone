class ProductsController < ApplicationController
  def products_all
    all_products = Product.all
    render json: all_products
  end
  def product_parameter_id
    id_value = params["id"]
    product_id = Product.find_by(id: "#{id_value}")
    render json:  product_id
  end
end
