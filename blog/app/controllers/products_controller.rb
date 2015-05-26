class ProductsController < ApplicationController
  respond_to :json
  def new
  end
  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to @product
  end
  def product_params
    params.require(:product).permit(:id, :landscape)
  end
  def show
    @product = Product.find(params[:id])
    respond_to do |format|
    format.json { render json: @product.to_json}
    format.html
    end
  end
  def index
    @products = Product.all
    respond_to do |format|
    format.json { render json: @products.to_json}
    format.html
    end
  end
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
    end
  end
  ########################################
  
  
