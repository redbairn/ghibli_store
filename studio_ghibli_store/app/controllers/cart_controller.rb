class CartController < ApplicationController
before_action :authenticate_user!
before_action :subtotal

  def add
        # get the id of the product
        id = params[:id]
        # if the cart exists use it, or if not make a new cart.
        if session[:cart] then
          cart = session[:cart]
        else
          session[:cart] = {}
          cart = session[:cart]
        end  
        
        # check if it is there and if so increment the quantity by 1
        # if the item is not there then set the quantity to be 1
        
        if cart[id] then
          cart[id] = cart[id] + 1
        else
          cart[id] = 1
        end 
    
    redirect_to :action => :index
  end
  
  def clear
    session[:cart] = nil
    redirect_to :action => :index
  end
    
  
  def remove
    id = params[:id]
    cart = session[:cart]
    cart.delete id
    redirect_to :action => :index
  end
  
  def reduce
    id = params[:id]
    cart = session[:cart]
    if cart[id] == 1 then # If we go below 1 remove the item instead of showing it with 0 or a minus quantity
      cart.delete id
      redirect_to :action => :index
    else
      cart[id] = cart[id] - 1
      redirect_to :action => :index
    end
    

  end
  
  
  def increase
    id = params[:id]
    cart = session[:cart]
    cart[id] = cart[id] + 1
    
    redirect_to :action => :index
  end
  
  
  def index
    # pass the cart to be displayed
    if session[:cart]  then
      @cart = session[:cart]
      #total=0
      #@cart.each do | id, quantity |
      # product = Product.find_by_id(id)
       #@grand_total= total += quantity * product.cost_price 
      #end
    else
      @cart = {}
    end
  end
  
  def subtotal
    @cart = session[:cart]
    total=0
    @count_items = 0
    @cart.each do | id, quantity |
      product = Product.find_by_id(id)
      @grand_total= total += quantity * product.cost_price 
      @count_items += quantity
    end
  end
  
  def createOrder
   #@orderNo = Order.find(params[:id])
  
   # Step 1: Get the current user
   @user = User.find(current_user.id)
  
   # Step 2: Create a new order and associate it with the current user
   @order = @user.orders.build(:order_date => DateTime.now, :status => 'Pending')
   @order.save
  
   # Step 3: For each item in the cart, create a new item on the order!!
   @cart = session[:cart] || {} # Get the content of the Cart
   @cart.each do | id, quantity |
     product = Product.find_by_id(id)
     @orderitem = @order.orderitems.build(:product_id => product.id, :title => product.title, :description => product.description, :quantity => quantity, :cost_price=> product.cost_price)
     @orderitem.save
   end
   
    @orders = Order.all
    # Only choose order items fromt he last order
    @orderitems = Orderitem.where(order_id: Order.last)
   
   session[:cart] = nil # Hidden for development so I can refresh the page
   
  end
  
    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:order_date, :user_id, :status)
    end
  
end
