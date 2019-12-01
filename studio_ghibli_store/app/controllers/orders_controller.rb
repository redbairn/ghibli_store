class OrdersController < ApplicationController
  def index

  end

  def show
    @orderitems = Orderitem.all
    @orderitems = Orderitem.where(order_id: params[:id])
  end

  def new
  end

  def edit
  end

  def delete
  end
  
  def create
  end
  
  def destroy
  end
  
  def update
  end
end
