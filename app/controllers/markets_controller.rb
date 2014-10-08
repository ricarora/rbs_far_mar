class MarketsController < ApplicationController

  def new
    @market = Market.new
  end

  def create
    @market = Market.new(params.require(:banana).permit(:title,:content))
    if @market.save
      redirect_to root_path
    else
      render :new  #this renders new.html.erb again
    end
  end

end
