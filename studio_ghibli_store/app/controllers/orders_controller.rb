class OrdersController < ApplicationController
  def index
    @orders = Orders.all render('index')
  end

  def show
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
