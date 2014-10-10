class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params.require(:product).permit(:name))
    @product.update(vendor_id: session[:vendor_id])

    redirect_to "/vendors/profile"

  end

  def delete
    @product = Product.find(params[:id]).destroy
    redirect_to "/vendors/profile"
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
