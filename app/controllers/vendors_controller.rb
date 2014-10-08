class VendorsController < ApplicationController

  def new
    @vendor = Vendor.new
  end

  def index
    @vendors = Vendor.all
  end

  def create
    @vendor = Vendor.new(params.require(:vendor).permit(:name,:no_of_employees,:market_id))
    if @vendor.save
      redirect_to root_path
    else
      render :new  #this renders new.html.erb again
    end
  end

  def delete
    @vendor = nil
  end


end
