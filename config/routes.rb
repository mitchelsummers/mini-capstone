Rails.application.routes.draw do
  get "/products_all" => "products#products_all"
  get "/product_random" => "products#product_random"
end
