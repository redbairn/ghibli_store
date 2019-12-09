class StaticPagesController < ApplicationController
  def home
    @categories = Category.all
    @cart = session[:cart]
    total=0
    @cart.each do | id, quantity |
      product = Product.find_by_id(id)
      @grand_total= total += quantity * product.cost_price 
    end
    
    
  end

  def category
    catName = params[:title]
    @products = Product.where("category like ? ", catName)
  end

  def about
  end

  def help
  end

  def account
  end

  def contact
  end

  def cart
  end
  
end
