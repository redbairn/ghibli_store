class StaticPagesController < ApplicationController
  def home
    @categories = Category.all
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
