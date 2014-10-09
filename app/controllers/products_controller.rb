class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params.require(:product).permit(:name, :vendor_id))
    if @product.save
      redirect_to product_new_path
    else
      render :new
    end
  end

  def delete
    @product = Product.find(params[:id]).destroy
    redirect_to product_new_path
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(params.require(:product).permit(:name, :vendor_id))
      redirect_to product_new_path
    else
      render :edit
    end
  end
end
