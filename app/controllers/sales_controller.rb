class SalesController < ApplicationController

  def index
    @sales = Sale.all
  end

  def new
    @sale = Sale.new
  end

  def create
    @sale = Sale.new(params.require(:sale).permit(:amount, :purchase_time, :purchase_date, :vendor_id, :product_id))
    if @sale.save
      redirect_to root_path
    else
      render :new
    end
  end
end
