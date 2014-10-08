class ProductsController < ApplicationController

  def index
    @productsp = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params.require(:product).permit(:name, :vendor_id))
    if @product.save
      redirect_to root_path
    else
      render :new
    end
  end

  def delete
    @product = nil
  end
end
