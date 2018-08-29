class Api::ProductsController < ApplicationController

  def one_product_action
    @product = Product.last
    render 'one_product.json.jbuilder'
  end

  def all_products_action
    @products = Product.all
    render 'all_products.json.jbuilder'
  end

end
