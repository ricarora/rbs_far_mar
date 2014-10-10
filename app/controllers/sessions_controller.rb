class SessionsController < ApplicationController
  def new

  end

  def create
    @vendor = Vendor.find_by username: params[:vendor][:username], password: params[:vendor][:password]
    if @vendor == nil
      puts "error"
    else
      session[:vendor_id] = @vendor.id
      redirect_to "/vendors/edit"
    end
  end

  def destroy
  end
end
