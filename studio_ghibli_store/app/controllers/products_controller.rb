class ProductsController < ApplicationController
  def index
    @products = Product.all render('index')
  end

  def show
  end

  def new
  end

  def edit
  end

  def delete
  end
end
