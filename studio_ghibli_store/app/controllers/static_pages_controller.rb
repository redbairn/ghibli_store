class StaticPagesController < ApplicationController
  before_action :subtotal
  
    def home
      @categories = Category.all
    end

  def category
    catId = params[:id]
    @products = Product.where("categories_id like ? ", catId)
  end

  def about
  end
  
  def aboutSend
    @order = Order.find(params[:id])
    @order.update_attribute(:status, "Paid with Paypal")
  end

  def help
  end

  def account
  end

  def contact
  end

  def cart
  end
  
  def welcome
    #@user = User.find(current_user.id)
  end
  
  def subtotal
    if session[:cart]  then
      @cart = session[:cart]
      total=0
      @count_items = 0
      @cart.each do | id, quantity |
        product = Product.find_by_id(id)
        @grand_total= total += quantity * product.cost_price 
        @count_items += quantity
      end
    else
      @cart = {}
    end 
  end
  
end
