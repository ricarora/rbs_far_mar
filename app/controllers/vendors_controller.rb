class VendorsController < ApplicationController

  def new
    @vendor = Vendor.new
  end

  def index
    @vendors = Vendor.all
  end

  def create
    @vendor = Vendor.new(vendor_params)
    if @vendor.save
      redirect_to root_path
    else
      render :new  #this renders new.html.erb again
    end
  end

  def delete
    @vendor = Vendor.find(params[:id]).destroy
    redirect_to root_path
  end

  def edit
    @vendor = Vendor.find(session[:vendor_id])
  end

  def update
    @vendor = Vendor.find(params[:id])
    if @vendor.update(vendor_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def vendor_params
    params.require(:vendor).permit(:name,:no_of_employees,:market_id,:username,:password)
  end

  def profile
    @vendor = Vendor.find(session[:vendor_id])
  end

  def add_market
    id = params[:format]
    profile.update(market_id: id.to_i)
    redirect_to vendors_profile_path
  end
end
