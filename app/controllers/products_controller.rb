class ProductsController < ApplicationController
  def products_all
    all_products = Product.all
    render json: all_products
  end
end
