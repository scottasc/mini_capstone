Rails.application.routes.draw do
  namespace :api do
    get "/first_product_url" => 'products#first_product_action'
    get "/all_products_url" => 'products#all_products_action'
  end
end
