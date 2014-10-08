class MarketsController < ApplicationController

  def index
    @markets = Market.all
  end
    
  def new
    @market = Market.new
  end

  def create
    @market = Market.new(params.require(:market).permit(:name,:address,:city,:county,:state,:zip))
    if @market.save
      redirect_to root_path
    else
      render :new  #this renders new.html.erb again
    end
  end

  def delete
    @market = nil
  end

end
