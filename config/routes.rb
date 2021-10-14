Rails.application.routes.draw do
  get "/products_all" => "products#products_all"
  get "/product_parameter_id/:id" => "products#product_parameter_id"
end
