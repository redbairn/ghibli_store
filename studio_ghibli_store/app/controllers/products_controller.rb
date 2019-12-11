class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :subtotal

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
    #category = Product.where(categories_id: params[:id])
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'The product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'The product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'The product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def search
    st = "%#{params[:q]}%"
    @products = Product.where("title like ?", st)
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


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:title, :description, :colour, :cost_price, :image_url, :categories_id, :supplier_id, :category)
    end

end