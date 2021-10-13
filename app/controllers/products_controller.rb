class ProductsController < ApplicationController
  def products_all
    all_products = Product.all
    render json: all_products
  end
  def product_random
    product_random = Product.all.sample
    render json: product_random
  end
end
