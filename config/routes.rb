Rails.application.routes.draw do
  get "/products" => "products#index"
  post "/products" => "products#create"
  get "/products/:id" => "products#show"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"
  get "/product_query_parameter_id" => "products#product_query_parameter_id"
  post "/body_params" => "products#body_params"
end
