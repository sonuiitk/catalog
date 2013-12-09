class ProductsController < ApplicationController
  
  def index
  end
  
  def details
    @id = params[:id]
    @product = Product.find(:first, :conditions => "id = '#{@id}'")
    @products = @product.group.products
  end


end
