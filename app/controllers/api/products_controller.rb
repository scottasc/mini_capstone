class Api::ProductsController < ApplicationController

  def first_product_action
    @product = Product.last
    render 'first_product.json.jbuilder'
  end

  def all_products_action
    @products = Product.all
    render 'all_products.json.jbuilder'
  end

end
