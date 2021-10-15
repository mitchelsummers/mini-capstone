Rails.application.routes.draw do
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  get "/product_query_parameter_id" => "products#product_query_parameter_id"

  post "/body_params" => "products#body_params"
end
